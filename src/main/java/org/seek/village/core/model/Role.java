package org.seek.village.core.model;

import java.io.Serializable;

import com.baomidou.mybatisplus.annotations.TableName;
@TableName("v_role")
public class Role implements Serializable{
	private static final long serialVersionUID = -5466433156425737781L;

	private Long id;

    private String name;

    private Byte seq;

    private String description;

    private Byte status;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Byte getSeq() {
        return seq;
    }

    public void setSeq(Byte seq) {
        this.seq = seq;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }
}