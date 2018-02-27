package org.seek.village.core.model;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableName;

@TableName("v_role_resource")
public class RoleResource implements Serializable{
	private static final long serialVersionUID = -5195053717670830715L;

	private Long id;

    private Long roleId;

    private Long resourceId;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getRoleId() {
        return roleId;
    }

    public void setRoleId(Long roleId) {
        this.roleId = roleId;
    }

    public Long getResourceId() {
        return resourceId;
    }

    public void setResourceId(Long resourceId) {
        this.resourceId = resourceId;
    }
}