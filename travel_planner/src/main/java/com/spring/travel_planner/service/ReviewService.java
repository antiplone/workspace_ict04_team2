package com.spring.travel_planner.service;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.travel_planner.dao.ReviewDAO;
import com.spring.travel_planner.dto.ReviewDTO;

@Service
public class ReviewService {
	
	@Autowired
	private ReviewDAO dao;

	// 조회순으로 리뷰게시글 4개만
	public void mainReviewList(Model model) 
			throws ServletException, IOException {
		System.out.println("리뷰Service - reviewList");
		
		// 목록
		int start = 1;
		int end = 4;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		List<ReviewDTO> list = dao.mainReviewList(map);
		System.out.println(start + "에서 " + end + "까지의 게시글 목록들 : " + list);
		
		// jsp로 처리결과 전달
		model.addAttribute("list", list);
	}
}
