package com.ssamz.biz.user;

public class UserVO {
	//private 멤버 변수 선언
	private String id;
		private String password;
		private String name;
		private String role;
		
		//getter , setter method
		public String getId() {
			return id;
		}
		public void setId(String id) {
			this.id = id;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getRole() {
			return role;
		}
		public void setRole(String role) {
			this.role = role;
		}
		
		
}
