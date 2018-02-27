package org.seek.village.core.service;

import org.seek.village.core.common.result.PageInfo;
import org.seek.village.core.model.SysLog;

import com.baomidou.mybatisplus.service.IService;

/**
 *
 * SysLog 表数据服务层接口
 *
 */
public interface ISysLogService extends IService<SysLog> {

    void selectDataGrid(PageInfo pageInfo);

}