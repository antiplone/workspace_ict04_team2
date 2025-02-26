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
import com.spring.travel_planner.dto.RecommendCourseDTO;

@Service
public class HomeServiceImpl {
	
	@Autowired
	private HomeDAOImpl Hdao;
	
	public void HometopListAction(HttpServletRequest req, HttpServletResponse res, Model model)
			throws ServletException, IOException {
		System.out.println("<<< HomeServiceImpl - HometopListAction >>>");
		
		int start = 1;
		int end = 8;

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("start1",start);
		map.put("end1",end);
		
		System.out.println("map + map");
		
		List<RecommendCourseDTO> list1 = Hdao.mainRecommendList(map);
		
		// jsp로 처리결과 전달
		System.out.println("RecommendCourseDTO2 list1 => " + list1);
		
		model.addAttribute("list1", list1);
		

	}

}
