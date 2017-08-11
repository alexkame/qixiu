/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.drh.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 用户表Entity
 * @author hl
 * @version 2017-08-10
 */
public class TUser extends DataEntity<TUser> {
	
	private static final long serialVersionUID = 1L;
	private Long username;		// 用户名：手机号
	private String password;		// 密码
	private String type;		// 用户类型
	private String realname;		// 真实姓名
	private String nickname;		// 昵称
	private String gender;		// 性别：F-女 M-男
	private String email;		// 邮箱
	private String qOpenId;		// QQ openId
	private String uOpenId;		// weibo openId
	private String wOpenId;		// 微信 openId
	
	public TUser() {
		super();
	}

	public TUser(String id){
		super(id);
	}

	public Long getUsername() {
		return username;
	}

	public void setUsername(Long username) {
		this.username = username;
	}
	
	@Length(min=0, max=255, message="密码长度必须介于 0 和 255 之间")
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@Length(min=0, max=16, message="用户类型长度必须介于 0 和 16 之间")
	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	@Length(min=0, max=64, message="真实姓名长度必须介于 0 和 64 之间")
	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}
	
	@Length(min=0, max=64, message="昵称长度必须介于 0 和 64 之间")
	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
	@Length(min=0, max=16, message="性别：F-女 M-男长度必须介于 0 和 16 之间")
	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	@Length(min=0, max=128, message="邮箱长度必须介于 0 和 128 之间")
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	@Length(min=0, max=32, message="QQ openId长度必须介于 0 和 32 之间")
	public String getQOpenId() {
		return qOpenId;
	}

	public void setQOpenId(String qOpenId) {
		this.qOpenId = qOpenId;
	}
	
	@Length(min=0, max=32, message="weibo openId长度必须介于 0 和 32 之间")
	public String getUOpenId() {
		return uOpenId;
	}

	public void setUOpenId(String uOpenId) {
		this.uOpenId = uOpenId;
	}
	
	@Length(min=0, max=32, message="微信 openId长度必须介于 0 和 32 之间")
	public String getWOpenId() {
		return wOpenId;
	}

	public void setWOpenId(String wOpenId) {
		this.wOpenId = wOpenId;
	}
	
}