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

import com.spring.travel_planner.dao.LocationDAO;
import com.spring.travel_planner.dto.LocationDTO;

@Service
public class LocationServiceImpl implements LocationService {

	@Autowired
	private LocationDAO dao;
	
	// 지역 - '구' 목록 조회 ('전국' 제외 시 선택 시)
	
	  @Override public void guListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			  throws ServletException, IOException { 
	  System.out.println("LocationServiceImpl - guListAction()");
	  
	  // 화면에서 입력받은 '시' 가져오기 int tc_area =
	  int tc_area = Integer.parseInt(request.getParameter("location_si"));
	  System.out.println("service si_select : => " + tc_area);
	  
	  // 해당 '시'에 맞는 '구' 가져오기 - dao 정보 조회 List<LocationDTO> list =
	  List<LocationDTO> list = dao.locationList(tc_area);
	  
	  // '구' 정보 jsp에 전달 
	  model.addAttribute("list", list); 
	  }
	 
	 /*
	// 지역 - '구' 선택 시 해당 리스트들 조회
	/*
	 * @Override public void selectListAction(HttpServletRequest request,
	 * HttpServletResponse response, Model model) throws ServletException,
	 * IOException { System.out.println("LocationServiceImpl - selectListAction()");
	 * 
	 * // 시(히든값), 구값 가져오기 int select_si =
	 * Integer.parseInt(request.getParameter("hiddenLocation_si")); String select_gu
	 * = request.getParameter("gu_choice");
	 * System.out.println("service select_si : => " + select_si);
	 * System.out.println("service select_gu : => " + select_gu);
	 * 
	 * // 해당 지역에 맞는 정보 가져오기 - dao 정보 조회 Map<String, Object> map = new
	 * HashMap<String, Object>(); map.put("select_si", select_si);
	 * map.put("select_gu", select_gu);
	 * 
	 * List<LocationDTO> list = dao.selectlocationList(map);
	 * 
	 * // 해당 리스트들 jsp에 전달 model.addAttribute("list", list);
	 * 
	 * }
	 */



}
