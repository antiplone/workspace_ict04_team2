package com.spring.travel_planner.dao;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl {
	private static Logger logger = LoggerFactory.getLogger(MemberDAOImpl.class);

	@Autowired
	private SqlSessionTemplate sqlSession;


	public void login_action(HttpServletRequest req) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("email", req.getParameter("login_email"));
		params.put("pwd", req.getParameter("login_password"));

		Map<String, Object> results = sqlSession.selectOne("com.spring.travel_planner.dao.MemberDAO.member_login", params);
		if (results != null && results.size() > 0) {
			HttpSession session = req.getSession();
			results.forEach((key, value) -> { // DB에서 받아온 회원정보를 컬럼명으로 세션에 저장
				session.setAttribute(key.toLowerCase(), value);
			});
			logger.info("m_email : " + session.getAttribute("m_email"));
		}
		else req.setAttribute("failed", true);
	}

	public void test() {
		int result = sqlSession.selectOne("com.spring.travel_planner.dao.MemberDAO.member_test");
		logger.info("result : " + result);
	}
}
