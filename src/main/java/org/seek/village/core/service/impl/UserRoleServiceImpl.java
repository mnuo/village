package org.seek.village.core.service.impl;

import org.seek.village.core.dao.UserRoleMapper;
import org.seek.village.core.model.UserRole;
import org.seek.village.core.service.IUserRoleService;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.service.impl.ServiceImpl;

/**
 *
 * UserRole 表数据服务层接口实现类
 *
 */
@Service
public class UserRoleServiceImpl extends ServiceImpl<UserRoleMapper, UserRole> implements IUserRoleService {

}