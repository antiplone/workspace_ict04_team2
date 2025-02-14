package com.spring.travel_planner.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.ui.Model;

public interface LocationService {
	
	// 지역 - '구' 목록 조회 ('전국' 제외 시 선택 시)
	public void guListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
/*
	  // 지역 - '구' 선택 시 해당 리스트들 조회
	public void selectListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	*/
	
	// 지역 - '구'선택시 리스트들 조회 테스트 메서드
	public void guListAction_test(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException;
	
	
}
