package com.spring.travel_planner.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl {

	private static Logger logger = LoggerFactory.getLogger(MemberDAOImpl.class);

	private DataSource dataSource;
	private ResultSet rs;
	private String sql;

	public void login_action(HttpServletRequest req) {

		String email = req.getParameter("login_email");
		String password = req.getParameter("login_password");

		// tester@example.email	전영대	1234
		sql = "SELECT * FROM travel_member_tbl WHERE m_email=? AND m_password=?";
		try (Connection conn = dataSource.getConnection()) {
			try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
				pstmt.setString(1, email);
				pstmt.setString(2, password);
				rs = pstmt.executeQuery();

				if (rs.next()) {
					logger.info("로그인 성공!");
					req.setAttribute("m_name", rs.getString("m_name"));
				}
				else logger.info("해당 이메일의 회원정보가 없습니다.");
			}
		}
		catch (SQLException exc) {
			exc.printStackTrace();
		}
	}

	public void test() {
		sql = "SELECT COUNT(rownum) AS rn FROM travel_member_tbl";
		try (Connection conn = dataSource.getConnection()) {
			try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
				rs = pstmt.executeQuery();
				rs.next();
				logger.info(String.valueOf(rs.getInt("rn")));
			}
		}
		catch (SQLException exc) {
			exc.printStackTrace();
		}
	}
}
