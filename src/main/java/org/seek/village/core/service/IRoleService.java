package org.seek.village.core.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.seek.village.core.common.result.PageInfo;
import org.seek.village.core.model.Role;

import com.baomidou.mybatisplus.service.IService;

/**
 *
 * Role 表数据服务层接口
 *
 */
public interface IRoleService extends IService<Role> {

    void selectDataGrid(PageInfo pageInfo);

    Object selectTree();

    List<Long> selectResourceIdListByRoleId(Long id);

    void updateRoleResource(Long id, String resourceIds);

    Map<String, Set<String>> selectResourceMapByUserId(Long userId);

}