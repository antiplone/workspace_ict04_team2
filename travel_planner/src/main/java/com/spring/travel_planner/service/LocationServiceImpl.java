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
import com.spring.travel_planner.page.Location_Paging;


@Service
public class LocationServiceImpl implements LocationService {

	@Autowired
	private LocationDAO dao;
	
	// 지역 - '구' 목록 조회 ('전국' 제외 시 선택 시)
	
	  @Override public void guListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			  throws ServletException, IOException { 
	  System.out.println("LocationServiceImpl - guListAction()");
	  
	  // 화면에서 입력받은 '시' 가져오기 int tc_area =
	  String tc_area = request.getParameter("location_si");
	  System.out.println("service si_select : => " + tc_area);
	  
		/*
		 * // 해당 '시'에 맞는 '구' 가져오기 - dao 정보 조회 List<LocationDTO> list = List<LocationDTO>
		 * list = dao.locationList(tc_area); System.out.println("service list => " +
		 * list);
		 * 
		 * // '구' 정보 jsp에 전달 model.addAttribute("list", list);
		 */
	  }
	  
	  
	  
	// 지역 - '구'선택시 리스트들 조회 테스트 메서드
	@Override
	public void guListAction_test(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		// 3단계. 화면에서 입력받은 값 가져오기
		String pageNum = request.getParameter("pageNum");
		
		Location_Paging paging = new Location_Paging(pageNum);
		int total = dao.locationCnt();
		System.out.println("total => " + total);
		
		paging.setTotalCount(total);
		
		// 5-2단계. 게시글 목록 조회
		int start = paging.getStartRow();
		int end = paging.getEndRow();
		
		// HashMap 생성, key value 추가
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		List<LocationDTO> dto = dao.testLocationList(map);
		System.out.println("서비스 list: " + dto);
		
		model.addAttribute("dto", dto);
		model.addAttribute("paging", paging);
		model.addAttribute("total", total);
		
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
