package org.seek.village.core.model;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableName;

@TableName("v_user_role")
public class UserRole implements Serializable{
	private static final long serialVersionUID = 2813075305454686626L;

	private Long id;

    private Long userId;

    private Long roleId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }
}