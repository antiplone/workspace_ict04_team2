package com.spring.travel_planner.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.travel_planner.dao.HomeDAOImpl;
import com.spring.travel_planner.dto.RecommendCourseDTO2;
import com.spring.travel_planner.page.Paging;

@Service
public class HomeServiceImpl {
	
	@Autowired
	private HomeDAOImpl Hdao;
	
	public void MemberListAction(HttpServletRequest req, HttpServletResponse res, Model model)
			throws ServletException, IOException {
		System.out.println("<<< MemberServiceImpl - MemberListAction >>>");
		
		/*
		 * int total = Hdao.recommendCnt();
		 * 
		 * System.out.println("total => " + total);
		 */
		// 5-2단계. 게시글 목록 조회
		int start = 1;
		int end = 8;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("start1",start);
		map.put("end1",end);
		
		List<RecommendCourseDTO2> list1 = Hdao.recommendList(map);
		/* System.out.println("list1 => " + list1); */
		
		System.out.println("BoardCommentDTO list1 => " + list1);
		
		// 6단계. jsp로 처리결과 전달
		model.addAttribute("list1", list1);
	}

}
