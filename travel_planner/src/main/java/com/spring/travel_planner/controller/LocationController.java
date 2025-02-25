package com.spring.travel_planner.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.spring.travel_planner.dto.LocationDTO;
import com.spring.travel_planner.page.Location_Paging;
import com.spring.travel_planner.service.LocationServiceImpl;
import com.spring.travel_planner.sys.Location_APIConfig;

@Controller
public class LocationController {
	
	private static final Logger logger = LoggerFactory.getLogger(LocationController.class);
	private Map<String, Object> requestAreaCode1 = Location_APIConfig.TourAPI.mapAreaCode1();
	private Map<String, Object> requestAreaBasedList1 = Location_APIConfig.TourAPI.mapAreaBasedList1();
	
	@Autowired
	private LocationServiceImpl service;
	
	//////////////////////// api 테스트 시작 /////////////////////
	// 여행지 메인(기본값 = '전국'리스트)
	
	@RequestMapping("/api_location_main.lc")
	private ModelAndView api_location_main() {
		logger.info("api_location_main.lc");
		ModelAndView mnv = new ModelAndView("location/api_location_main_ajax");

		// 이쯤에서 DB접근부터
		boolean existDB = false;
		if (existDB) {
			logger.info("DB가 존재하여 mybatis로 접근");
		}
		else {
			logger.info("DB가 존재하지 않습니다.");
		}

		// 공통정보
		mnv.addObject("requestAreaCode1", JSONObject.toJSONString(requestAreaCode1));
		mnv.addObject("existDB", existDB);
		
		return mnv;
	}
	
	
	@RequestMapping("/api_location_main_result.lc")
	private ModelAndView api_location_main_result(@RequestBody List<Object> list) {
		// json데이터를 우리 DTO로 바꾸자
		ModelAndView mnv = new ModelAndView("location/api_location_main");
		System.out.println(list);
		mnv.addObject("si_result", list);

		return mnv;
	} 
	
	
	// 선택한 '시'에 해당하'구'선택 팝업창 띄우기
	@RequestMapping("/api_location_Select.lc")
	private ModelAndView api_location_Select(HttpServletRequest request) 
			throws ServletException, IOException{
		logger.info("api_location_Select.lc");
		
		ModelAndView mnv = new ModelAndView("location/api_location_mainSelect_ajax");
		
		
		// 이쯤에서 DB접근부터
		boolean existDB = false;
		if (existDB) {
			logger.info("DB가 존재하여 mybatis로 접근");
		}
		else {
			logger.info("DB가 존재하지 않습니다.");
		}

		// 공통정보
		mnv.addObject("requestAreaCode1", JSONObject.toJSONString(requestAreaCode1));
		mnv.addObject("existDB", existDB);
		mnv.addObject("location_si", request.getParameter("location_si"));
		System.out.println("컨트롤러 시 값:" + request.getParameter("location_si"));
		return mnv;
	}
	
	@RequestMapping("/api_location_Select_result.lc")
	private ModelAndView api_location_mainSelect_result(@RequestBody List<Object> list) 
			throws ServletException, IOException{
		// json데이터를 우리 DTO로 바꾸자
		ModelAndView mnv = new ModelAndView("location/api_location_mainSelect");
		System.out.println("gu_result: " + list);
		mnv.addObject("gu_result", list);
		
		return mnv;
	}

	
	   // '구' 선택 완료 후 여행지 리스트
    @RequestMapping("/api_location_mainList.lc")
    private ModelAndView api_location_mainList(HttpServletRequest request) 
			throws ServletException, IOException{
       logger.info("api_location_mainList.lc");
       ModelAndView mnv = new ModelAndView("location/api_location_mainListAction_ajax");

       // 이쯤에서 DB접근부터
       boolean existDB = false;
       if (existDB) {
          logger.info("DB가 존재하여 mybatis로 접근");
       }
       else {
          logger.info("DB가 존재하지 않습니다.");
       }
       
       // 공통정보
       mnv.addObject("requestAreaBasedList1", JSONObject.toJSONString(requestAreaBasedList1));
       mnv.addObject("existDB", existDB);
       return mnv;
    }
    
    @RequestMapping("/api_location_mainList_result.lc")
    private ModelAndView api_location_mainList_result(HttpServletRequest request, @RequestBody List<Object> list) 
    		throws ServletException, IOException {
       // json데이터를 우리 DTO로 바꾸자
       ModelAndView mnv = new ModelAndView("location/api_location_mainListAction");
       
       mnv.addObject("main_result", list);
       System.out.println("main_result: " + list);
       
       // 화면에서 입력받은 값 가져오기
    	String pageNum = request.getParameter("pageNum");

		Location_Paging paging = new Location_Paging(pageNum);
		int total = list.size();
		System.out.println("컨트롤러 total => " + total);

		paging.setTotalCount(total);

		// 5-2단계. 게시글 목록 조회
		int start = paging.getStartRow();
		int end = paging.getEndRow();

		// HashMap 생성, key value 추가
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);

		mnv.addObject("paging", paging);
		mnv.addObject("total", total);
		
       
       return mnv;
    }

	
////////////////////////api 테스트 끝 /////////////////////
	
	// 여행지 메인(기본값 = '전국'리스트)
	@RequestMapping("/location_main.lc")
	public String local_main(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url => location_main.lc >>>");
		
		
		service.MainListAction(request, response, model);
		
		return "location/location_main";
	}
	
	// 여행지 선택 - 상세페이지
	@RequestMapping("/location_detailAction.lc")
	public String location_datailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		logger.info("<<< url => location_datailAction.lc >>>");
		
		service.locationDetailAction(request, response, model);
		
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
		
		// 테스트 db연결 service.guListAction_test(request, response, model);
		
		service.selectListAction(request, response, model);
		
		return "location/location_mainListAction";
	}
	
}
