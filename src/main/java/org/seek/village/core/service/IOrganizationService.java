package org.seek.village.core.service;

import java.util.List;

import org.seek.village.core.common.result.ZTree;
import org.seek.village.core.model.Organization;

import com.baomidou.mybatisplus.service.IService;

/**
 *
 * Organization 表数据服务层接口
 *
 */
public interface IOrganizationService extends IService<Organization> {

    List<ZTree> selectTree();

    List<Organization> selectTreeGrid();

}