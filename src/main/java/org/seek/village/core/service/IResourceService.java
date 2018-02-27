package org.seek.village.core.service;

import java.util.List;

import org.seek.village.core.common.result.Menu;
import org.seek.village.core.common.result.ZTree;
import org.seek.village.core.model.Resource;
import org.seek.village.core.shiro.ShiroUser;

import com.baomidou.mybatisplus.service.IService;

/**
 *
 * Resource 表数据服务层接口
 *
 */
public interface IResourceService extends IService<Resource> {

    List<Resource> selectAll();

    List<ZTree> selectAllMenu();

    List<ZTree> selectAllTree();

    List<Menu> selectTree(ShiroUser shiroUser);

}