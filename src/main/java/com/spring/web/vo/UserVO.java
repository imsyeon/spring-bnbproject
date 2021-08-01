package com.spring.web.vo;

public class UserVO {
	private int user_idx;
	private String user_name;
	private String user_password;
	private String user_email;
	private String user_role;
	public UserVO() {
		// TODO Auto-generated constructor stub
	}
	public UserVO(int user_idx, String user_name, String user_password, String user_email, String user_role) {
		super();
		this.user_idx = user_idx;
		this.user_name = user_name;
		this.user_password = user_password;
		this.user_email = user_email;
		this.user_role = user_role;
	}
	public int getUser_idx() {
		return user_idx;
	}
	public void setUser_idx(int user_idx) {
		this.user_idx = user_idx;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_role() {
		return user_role;
	}
	public void setUser_role(String user_role) {
		this.user_role = user_role;
	}
	@Override
	public String toString() {
		return "UserVO [user_idx=" + user_idx + ", user_name=" + user_name + ", user_password=" + user_password
				+ ", user_email=" + user_email + ", user_role=" + user_role + "]";
	}
	
	
	
}
