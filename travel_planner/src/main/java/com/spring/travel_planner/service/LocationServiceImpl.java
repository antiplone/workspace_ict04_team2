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
	
	// 여행지 메인(기본값 = '전국'리스트)
	@Override
	public void MainListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("LocationServiceImpl - MainListAction()");
		
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

		List<LocationDTO> dto = dao.locationMainList(map);
		System.out.println("서비스 list: " + dto);

		model.addAttribute("dto", dto);
		model.addAttribute("paging", paging);
		model.addAttribute("total", total);
	}
	
	
	// 지역 - '구' 목록 조회 ('전국' 제외한 '시' 선택 시)
	@Override
	public void guListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("LocationServiceImpl - guListAction()");

		// 화면에서 입력받은 '시' 가져오기 int tc_area =
		int tc_si_num = Integer.parseInt(request.getParameter("location_si"));
		System.out.println("service si_select : => " + tc_si_num);

		// 해당 '시'에 맞는 '구' 가져오기 - dao 정보 조회
		List<LocationDTO> list = dao.locationList(tc_si_num);
		System.out.println("service list => " + list);

		// '구' 정보 jsp에 전달
		model.addAttribute("list", list);
		model.addAttribute("tc_si_num", tc_si_num);
	}

	/*
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
*/
	
	  // 지역 - '구' 선택 시 해당 리스트들 조회
	  @Override public void selectListAction(HttpServletRequest request, HttpServletResponse response, Model model) 
			  throws ServletException, IOException { 
	  System.out.println("LocationServiceImpl - selectListAction()");
	  
	  // 시(히든값), 구값 가져오기 int select_si =
	  int tc_si_num = Integer.parseInt(request.getParameter("location_si"));
	  String selcet_gu = request.getParameter("location_gu");
	  System.out.println("service tc_si_num : => " + tc_si_num);
	  System.out.println("service tc_gu : => " + selcet_gu);
	 
	  String[] tc_gu = selcet_gu.split("@");

	 // 해당 지역에 맞는 정보 가져오기 - dao 정보 조회 
	  Map<String, Object> map = new HashMap<String, Object>(); 
	  map.put("tc_si_num", tc_si_num);
	  
	  for(int i=0; i<tc_gu.length; i++) {
		  map.put("tc_gu", tc_gu[i]);
		  System.out.println("service tc_gu[i] : => " + tc_gu[i]);
	  }
	  
	 
	  List<LocationDTO> list = dao.selectlocationList(map);
	 
	  // 해당 리스트들 jsp에 전달
	  model.addAttribute("list", list);
	  
	  }

	// 지역 - 여행지 클릭 시 상세페이지 조회
	@Override
	public void locationDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		
		int ti_num = Integer.parseInt(request.getParameter("hidden_ti_num"));
		System.out.println("service locationDetailAction => " + ti_num);
		
		LocationDTO dto = dao.locationDetailPage(ti_num);
		
		model.addAttribute("dto", dto);
		
	}

}
