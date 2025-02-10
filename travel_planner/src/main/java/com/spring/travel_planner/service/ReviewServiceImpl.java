package com.spring.travel_planner.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.travel_planner.dao.ReviewDAOImpl;
import com.spring.travel_planner.dto.ReviewDTO;
import com.spring.travel_planner.page.Paging;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired 
	private ReviewDAOImpl dao;
	
	@Override
	public void reviewListAction(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException {
		System.out.println("ReviewServiceImpl - reviewListAction");
		
		String pageNum = request.getParameter("pageNum");
		
		Paging paging = new Paging(pageNum);
		int total = dao.reviewCnt();
		
		paging.setTotalCount(total);
		
		int start = paging.getStartRow();
		int end = paging.getEndRow();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		List<ReviewDTO> list = dao.reviewList(map);
		
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
	}

	@Override
	public void reviewDetailAction(HttpServletRequest request, Model model) 
			throws ServletException, IOException {
		
	}

	@Override
	public void reviewUpdateAction(HttpServletRequest request, Model model) 
			throws ServletException, IOException {
		
	}

	@Override
	public void reviewDeleteAction(HttpServletRequest request, Model model) 
			throws ServletException, IOException {
		
	}

	@Override
	public void reviewInsertAction(HttpServletRequest request, Model model) 
			throws ServletException, IOException {
		
	}

}
