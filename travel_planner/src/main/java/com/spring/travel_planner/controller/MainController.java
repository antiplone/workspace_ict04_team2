package com.spring.travel_planner.controller;

import java.io.IOException;
import java.util.Map;

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
import com.spring.travel_planner.service.HomeServiceImpl;
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
  
  @Autowired
  private HomeServiceImpl home_service;

	@RequestMapping("/home.do")

	private String main() {
		logger.info("<<< MainController => home.do >>>");
    return "common/home";
	}
	
	@RequestMapping("/main.do")
	private String main(HttpServletRequest req, HttpServletResponse res, Model model) 
			throws ServletException, IOException{
		logger.info("<<< MainController => main.do >>>");
		return "common/main3";
	}
	
	@RequestMapping("/mainAction.do")
	private String mainAction(HttpServletRequest req, HttpServletResponse res, Model model) 
			throws ServletException, IOException{
		logger.info("<<< MainController => mainAction.do >>>");
		home_service.MemberListAction(req, res, model);
		return "common/mainAction";
	}

	@RequestMapping("/mainReviewAction.do")
	private String mainReviewListAction(HttpServletRequest req, HttpServletResponse res, Model model) 
			throws ServletException, IOException{
		logger.info("<<< MainController => mainReviewListAction.do >>>");
		rev_service.mainReviewList(model);
		return "community/review/mainReviewAction";
	}


	@RequestMapping("/login.do")
	private String login() {
		logger.info("<<< MainController => login.do >>>");
		return "member/login";
	}

	@RequestMapping("/login_action.do")
	private String login_action(HttpServletRequest req)
			throws ServletException, IOException {
		logger.info("<<< MainController => login_action.do >>>");
		logger.info(req.getParameter("login_email"));
//		mem.test(); /* DB 연결이 안되는지 테스트 */
		mem.login_action(req);
		return "common/home";
	}

}
