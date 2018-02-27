package org.seek.village.core.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;
import org.seek.village.core.model.UserRole;

import com.baomidou.mybatisplus.mapper.BaseMapper;

/**
 *
 * UserRole 表数据库控制层接口
 *
 */
public interface UserRoleMapper extends BaseMapper<UserRole> {

    List<UserRole> selectByUserId(@Param("userId") Long userId);

    @Select("select role_id AS roleId from v_user_role where user_id = #{userId}")
    @ResultType(Long.class)
    List<Long> selectRoleIdListByUserId(@Param("userId") Long userId);

    @Delete("DELETE FROM v_user_role WHERE user_id = #{userId}")
    int deleteByUserId(@Param("userId") Long userId);

}