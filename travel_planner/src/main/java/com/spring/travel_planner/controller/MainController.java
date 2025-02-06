package com.spring.travel_planner.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.travel_planner.dao.MemberDAOImpl;

/**
 * [ <a href="https://doc.clickup.com/9018815828/d/h/8ct0dam-2398/41d697b5b23533c">개발방향 정리 페이지</a> ] <br>
 * 주소를 Ctrl + 왼쪽클릭하면, 정리 페이지로 이동.
 * 
 * @author YeongDae.Jeon
 *
 */
@Controller
public class MainController {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private MemberDAOImpl mem;


	@RequestMapping("/home.do")
	private String main() {
		return "common/home";
	}
	
	@RequestMapping("/main.do")
	private String main2() {
		return "common/main";
	}

	@RequestMapping("/login.do")
	private String login() {
		return "member/login";
	}

	@RequestMapping("/login_action.do")
	private String login_action(HttpServletRequest req)
			throws ServletException, IOException {
		logger.info(req.getParameter("login_email"));

//		mem.test(); /* DB 연결이 안되는지 테스트 */
		mem.login_action(req);

		return "common/main";
	}
}
