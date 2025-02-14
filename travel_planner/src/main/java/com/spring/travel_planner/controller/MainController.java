package com.spring.travel_planner.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.travel_planner.dao.MemberDAOImpl;
import com.spring.travel_planner.dao.ReviewDAO;
import com.spring.travel_planner.service.ReviewService;

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
	@Autowired
	private ReviewService rev_service;

	@RequestMapping("/home.do")
	private String main() {
		logger.info("<<< url => home.do >>>");
		
		
		return "common/home";
	}
	
	@RequestMapping("/main.do")
	private String main2(Model model) 
			throws ServletException, IOException {
		logger.info("<<< url => main.do >>>");
		
		rev_service.mainReviewList(model);
		return "common/main";
	}

	@RequestMapping("/login.do")
	private String login() {
		logger.info("<<< url => login.do >>>");
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
	
	@RequestMapping("/board_list.do") 
	public String login_action2(HttpServletRequest req) {
		logger.info(req.getParameter("DboardDAOImp - boardList"));
		
//		mem.test(); /* DB 연결이 안되는지 테스트 */
		mem.login_action(req);
		return "common/home";
	}
	
	
}
