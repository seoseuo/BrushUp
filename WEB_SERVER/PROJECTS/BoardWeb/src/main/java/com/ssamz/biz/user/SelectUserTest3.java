package com.ssamz.biz.user;

import java.util.List;

public class SelectUserTest3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 1. UserDAO 객체를 생성합니다.
		UserDAO dao = new UserDAO();
		
		// 2. 목록을 조회합니다.
		List<UserVO> userList = dao.getUserList();
		//dao.getUserList();
		
		// CASE-1
		System.out.println("전체 회원의 수 : " + userList.size());
		
		// CASE-2
		System.out.println("[ 회원의 권한 ]");
		for (UserVO user : userList) {
			System.out.println(user.getName() + "의 권한 : " + user.getRole());
		}
		

	}

}
