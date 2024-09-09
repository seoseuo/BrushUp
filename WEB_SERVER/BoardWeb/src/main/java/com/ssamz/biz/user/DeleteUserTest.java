package com.ssamz.biz.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.ssamz.biz.common.JDBCUtil;

public class DeleteUserTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// JDBC 관련 변수
		Connection conn = null;
		PreparedStatement stmt = null;

		try {
			conn = JDBCUtil.getConnection();

			String sql = "DELETE USERS WHERE ID=?";
			
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, "ssamz3");

			// SQL 전송
			int count = stmt.executeUpdate();

			System.out.println(count + "건 데이터 처리 성공!");

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);

		}

	}

}