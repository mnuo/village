package org.seek.village.core.service;

import java.util.List;

import org.seek.village.core.common.result.PageInfo;
import org.seek.village.core.model.User;
import org.seek.village.core.model.vo.UserVo;

import com.baomidou.mybatisplus.service.IService;

/**
 *
 * User 表数据服务层接口
 *
 */
public interface IUserService extends IService<User> {

    List<User> selectByLoginName(UserVo userVo);

    void insertByVo(UserVo userVo);

    UserVo selectVoById(Long id);

    void updateByVo(UserVo userVo);

    void updatePwdByUserId(Long userId, String md5Hex);

    void selectDataGrid(PageInfo pageInfo);

    void deleteUserById(Long id);
}