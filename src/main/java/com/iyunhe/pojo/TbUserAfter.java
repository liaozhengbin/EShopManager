package com.iyunhe.pojo;

public class TbUserAfter {
	private int user_id;
	private String user_name;
	private String user_pwd;
	private int user_type;
	private String user_openid;
	private int user_role;
	private String user_nickname;
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_pwd() {
		return user_pwd;
	}
	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}
	public int getUser_type() {
		return user_type;
	}
	public void setUser_type(int user_type) {
		this.user_type = user_type;
	}
	public String getUser_openid() {
		return user_openid;
	}
	public void setUser_openid(String user_openid) {
		this.user_openid = user_openid;
	}
	public int getUser_role() {
		return user_role;
	}
	public void setUser_role(int user_role) {
		this.user_role = user_role;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	@Override
	public String toString() {
		return "TbUserAfter [user_id=" + user_id + ", user_name=" + user_name
				+ ", user_pwd=" + user_pwd + ", user_type=" + user_type
				+ ", user_openid=" + user_openid + ", user_role=" + user_role
				+ ", user_nickname=" + user_nickname + "]";
	}
	
	
	public TbUserAfter(){}
	public TbUserAfter(int user_id, String user_name, String user_pwd,
			int user_type, String user_openid, int user_role,
			String user_nickname) {
		super();
		this.user_id = user_id;
		this.user_name = user_name;
		this.user_pwd = user_pwd;
		this.user_type = user_type;
		this.user_openid = user_openid;
		this.user_role = user_role;
		this.user_nickname = user_nickname;
	}
	
	
	
	
	
	
}
