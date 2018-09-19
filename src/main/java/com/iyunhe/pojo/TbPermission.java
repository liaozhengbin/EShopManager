package com.iyunhe.pojo;

public class TbPermission {
	private int permission_id;
	private String permission_des;
	
	
	public TbPermission(){}
	public TbPermission(int permission_id, String permission_des) {
		super();
		this.permission_id = permission_id;
		this.permission_des = permission_des;
	}

	public int getPermission_id() {
		return permission_id;
	}

	public void setPermission_id(int permission_id) {
		this.permission_id = permission_id;
	}

	public String getPermission_des() {
		return permission_des;
	}

	public void setPermission_des(String permission_des) {
		this.permission_des = permission_des;
	}



	@Override
	public String toString() {
		return "TbPermission [permission_id=" + permission_id
				+ ", permission_des=" + permission_des + "]";
	}
	
	
	
}
