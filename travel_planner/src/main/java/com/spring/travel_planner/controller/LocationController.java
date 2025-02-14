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

import com.spring.travel_planner.service.LocationServiceImpl;

@Controller
public class LocationController {
	
	private static final Logger logger = LoggerFactory.getLogger(LocationController.class);
	
	@Autowired
	private LocationServiceImpl service;
	
	// 여행지 메인(기본값 = '전국'리스트)
	@RequestMapping("/location_main.lc")
	public String local_main(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url => location_main.lc >>>");
		
		// 테스트 db연결
		service.guListAction_test(request, response, model);
		
		return "location/location_main";
	}
	
	// 여행지 선택 - 소개 페이지
	@RequestMapping("/location_detailAction.lc")
	public String location_datailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url => location_datailAction.lc >>>");
		
		return "location/location_detailAction";
	}
	
	// '구'선택 팝업창
	@RequestMapping("/location_mainSelect.lc")
	public String location_mainSelect(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url => location_mainSelect.lc >>>");
		
		service.guListAction(request, response, model);
		
		return "location/location_mainSelect";
	}
	
	// '구'선택 완료 시 해당 지역 리스트
	@RequestMapping("/location_mainListAction.lc")
	public String location_mainListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url => location_mainListAction.lc >>>");
		
		// 테스트 db연결
		service.guListAction_test(request, response, model);
		
		return "location/location_mainListAction";
	}
	
}
