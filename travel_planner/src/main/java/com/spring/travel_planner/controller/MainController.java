package com.spring.travel_planner.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * [ <a href="https://doc.clickup.com/9018815828/d/h/8ct0dam-2398/41d697b5b23533c">개발방향 정리 페이지</a> ] <br>
 * 주소를 Ctrl + 왼쪽클릭하면, 정리 페이지로 이동.
 * 
 * @author YeongDae.Jeon
 *
 */
@Controller
public class MainController {

	@RequestMapping("/")
	private String home() {
		return "index";
	}
	
	@RequestMapping("/main.do")
	private String main() {
		return "common/main";
	}
}
