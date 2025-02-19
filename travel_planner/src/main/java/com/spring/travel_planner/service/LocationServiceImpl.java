package com.spring.travel_planner.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
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


	
	  // 지역 - '구' 선택 시 해당 리스트들 조회
	  @Override public void selectListAction(HttpServletRequest request, HttpServletResponse response, Model model) 
			  throws ServletException, IOException { 
	  System.out.println("LocationServiceImpl - selectListAction()");
	  
	   // 리스트 - 페이징 처리
	  String pageNum = request.getParameter("pageNum");
	
	  Location_Paging paging = new Location_Paging(pageNum);
	  int total = dao.locationCnt();
	  System.out.println("total => " + total);
	
	  paging.setTotalCount(total);
	
		// 리스트 - 목록 조회
	  int start = paging.getStartRow();
	  int end = paging.getEndRow();
			
		// HashMap 생성, key value 추가
	  Map<String, Object> map = new HashMap<String, Object>();
	  map.put("start", start);
	  map.put("end", end);
				
	  // '시', '구'값 가져오기
	  int tc_si_num = Integer.parseInt(request.getParameter("location_si"));
	  String selcet_gu = request.getParameter("location_gu");
	  // System.out.println("service tc_si_num : => " + tc_si_num);
	  // System.out.println("service tc_gu : => " + selcet_gu);
	 
	  // num인 '시' 값을 한글로 변경
	  String select_si = "";

	  switch(tc_si_num) {
	  	case 1:
	  		select_si = "서울";
	  		break;
	  	case 2:
	  		select_si = "인천";
	  		break;
	  	case 3:
	  		select_si = "대전";
	  		break;
	  	case 4:
	  		select_si = "대구";
	  		break;
	  	case 5:
	  		select_si = "광주";
	  		break;
	  	case 6:
	  		select_si = "부산";
	  		break;
	  	case 7:
	  		select_si = "울산";
	  		break;
	  	case 8:
	  		select_si = "세종";
	  		break;
	  	case 31:
	  		select_si = "경기";
	  		break;
	  	case 32:
	  		select_si = "강원";
	  		break;
	  	case 33:
	  		select_si = "충북";
	  		break;
	  	case 34:
	  		select_si = "충남";
	  		break;
	  	case 35:
	  		select_si = "경북";
	  		break;
	  	case 36:
	  		select_si = "경남";
	  		break;
	  	case 37:
	  		select_si = "전북";
	  		break;
	  	case 38:
	  		select_si = "전남";
	  		break;
	  	case 39:
	  		select_si = "제주";
	  		break;
	  }
	  
	  List<String> location_list = new ArrayList<String>();
	  
	  String[] tc_gu = selcet_gu.split("@");
	  
	  for(int i=0; i<tc_gu.length; i++) {
		  String choice = select_si + " " + tc_gu[i];
		 location_list.add(choice);
	  }  
	  
	  List<LocationDTO> list = dao.selectlocationList(location_list);
	  
	  // 해당 리스트들 jsp에 전달
	  model.addAttribute("list", list);
	  model.addAttribute("paging", paging);
	  model.addAttribute("total", total);
	  }

	// 지역 - 여행지 클릭 시 상세페이지 조회
	@Override
	public void locationDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		
		int ti_num = Integer.parseInt(request.getParameter("location_num"));
	System.out.println("service locationDetailAction => " + ti_num);
	
	LocationDTO dto = dao.locationDetailPage(ti_num);
	
	model.addAttribute("dto", dto);
		
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
	
	
}
