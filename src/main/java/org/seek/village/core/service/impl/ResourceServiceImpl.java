package org.seek.village.core.service.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.seek.village.core.common.result.Menu;
import org.seek.village.core.common.result.ZTree;
import org.seek.village.core.dao.ResourceMapper;
import org.seek.village.core.dao.RoleMapper;
import org.seek.village.core.dao.RoleResourceMapper;
import org.seek.village.core.dao.UserRoleMapper;
import org.seek.village.core.model.Resource;
import org.seek.village.core.service.IResourceService;
import org.seek.village.core.shiro.ShiroUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;

/**
 *
 * Resource 表数据服务层接口实现类
 *
 */
@Service
public class ResourceServiceImpl extends ServiceImpl<ResourceMapper, Resource> implements IResourceService {
    private static final int RESOURCE_MENU = 0; // 菜单

    @Autowired
    private ResourceMapper resourceMapper;
    @Autowired
    private UserRoleMapper userRoleMapper;
    @Autowired
    private RoleMapper roleMapper;
    @Autowired
    private RoleResourceMapper roleResourceMapper;
    
    @Override
    public List<Resource> selectAll() {
        EntityWrapper<Resource> wrapper = new EntityWrapper<Resource>();
        wrapper.orderBy("seq");
        return resourceMapper.selectList(wrapper);
    }
    
    public List<Resource> selectByType(Integer type) {
        EntityWrapper<Resource> wrapper = new EntityWrapper<Resource>();
        Resource resource = new Resource();
        wrapper.setEntity(resource);
        wrapper.addFilter("resource_type = {0}", type);
        wrapper.orderBy("seq");
        return resourceMapper.selectList(wrapper);
    }
    
    @Override
    public List<ZTree> selectAllMenu() {
        List<ZTree> trees = new ArrayList<ZTree>();
        // 查询所有菜单
        List<Resource> resources = this.selectByType(RESOURCE_MENU);
        if (resources == null) {
            return trees;
        }
        for (Resource resource : resources) {
        		ZTree tree = new ZTree();
            tree.setId(resource.getId());
            tree.setpId(resource.getPid());
            tree.setName(resource.getName());
            tree.setIconSkin(resource.getIcon());
            tree.setAttributes(resource.getUrl());
            Integer opened = resource.getOpened();
            tree.setOpen(null != opened && opened == 1);
            trees.add(tree);
        }
        return trees;
    }
    
    @Override
    public List<ZTree> selectAllTree() {
        // 获取所有的资源 tree形式，展示
        List<ZTree> trees = new ArrayList<ZTree>();
        List<Resource> resources = this.selectAll();
        if (resources == null) {
            return trees;
        }
        for (Resource resource : resources) {
    			ZTree tree = new ZTree();
            tree.setId(resource.getId());
            tree.setpId(resource.getPid());
            tree.setName(resource.getName());
            tree.setIconSkin(resource.getIcon());
            tree.setAttributes(resource.getUrl());
            Integer opened = resource.getOpened();
            tree.setOpen(null != opened && opened == 1);
            trees.add(tree);
        }
        return trees;
    }
    
    @Override
    public List<Menu> selectTree(ShiroUser shiroUser) {
        List<Menu> trees = new ArrayList<Menu>();
        // shiro中缓存的用户角色
        Set<String> roles = shiroUser.getRoles();
        if (roles == null) {
            return trees;
        }
        // 如果有超级管理员权限
        if (roles.contains("admin")) {
            List<Resource> resourceList = this.selectByType(RESOURCE_MENU);
            if (resourceList == null) {
                return trees;
            }
            for (Resource resource : resourceList) {
            	if(resource.getPid() == null) {
            		Menu parent = new Menu();
            		parent.setId(resource.getId());
            		parent.setpId(resource.getPid());
            		parent.setName(resource.getName());
            		parent.setIconSkin(resource.getIcon());
            		parent.setAttributes(resource.getUrl());
                    Integer opened = resource.getOpened();
                    parent.setOpen(null != opened && opened == 1);
                    parent.setOpenMode(resource.getOpenMode());
                    trees.add(parent);
            	}
            	
            }
            for (Resource resource : resourceList) {
            	if(resource.getPid() != null) {
            		setChild(trees, resource);
            	}
            	
            }
            return trees;
        }
        // 普通用户
        List<Long> roleIdList = userRoleMapper.selectRoleIdListByUserId(shiroUser.getId());
        if (roleIdList == null) {
            return trees;
        }
        List<Resource> resourceLists = roleMapper.selectResourceListByRoleIdList(roleIdList);
        if (resourceLists == null) {
            return trees;
        }
        for (Resource resource : resourceLists) {
        	if(resource.getPid() == null) {
        		Menu parent = new Menu();
        		parent.setId(resource.getId());
        		parent.setpId(resource.getPid());
        		parent.setName(resource.getName());
        		parent.setIconSkin(resource.getIcon());
        		parent.setAttributes(resource.getUrl());
                Integer opened = resource.getOpened();
                parent.setOpen(null != opened && opened == 1);
                parent.setOpenMode(resource.getOpenMode());
                trees.add(parent);
        	}
        	
        }
        for (Resource resource : resourceLists) {
        	if(resource.getPid() != null) {
        		setChild(trees, resource);
        	}
        }
        return trees;
    }
    private void setChild(List<Menu> list, Resource resource){
    	for(Menu menu: list) {
    		if(menu.getId().longValue() == resource.getPid().longValue()) {
    			Menu child = new Menu();
    			child.setId(resource.getId());
    			child.setpId(resource.getPid());
    			child.setName(resource.getName());
    			child.setIconSkin(resource.getIcon());
    			child.setAttributes(resource.getUrl());
    			Integer opened = resource.getOpened();
    			child.setOpen(null != opened && opened == 1);
    			child.setOpenMode(resource.getOpenMode());
    			menu.getChild().add(child);
    		}
    	}
    }

	@Override
	public boolean deleteById(Serializable resourceId) {
		roleResourceMapper.deleteByResourceId(resourceId);
		return super.deleteById(resourceId);
	}
}