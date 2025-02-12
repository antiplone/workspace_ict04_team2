package com.spring.travel_planner.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.travel_planner.dto.RecommendCourseDTO;

@Service
public class RecommendCourseServiceImpl implements RecommendCourseService {
	
	// 여행지역 목록
	@Override
	public void productListAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		
		List<RecommendCourseDTO> list = new ArrayList<RecommendCourseDTO>();
		
		RecommendCourseDTO JEJU = new RecommendCourseDTO();
		JEJU.setTr_area_english("JEJU");
		JEJU.setTr_area_korea("대한민국 제주");
		JEJU.setTr_area_image("JEJU");
		
		RecommendCourseDTO BUSAN = new RecommendCourseDTO();
		BUSAN.setTr_area_english("BUSAN");
		BUSAN.setTr_area_korea("대한민국 부산");
		BUSAN.setTr_area_image("BUSAN");
		
		RecommendCourseDTO SEOUL = new RecommendCourseDTO();
		SEOUL.setTr_area_english("SEOUL");
		SEOUL.setTr_area_korea("대한민국 서울");
		SEOUL.setTr_area_image("SEOUL");
		
		RecommendCourseDTO GYEONGJU = new RecommendCourseDTO();
		GYEONGJU.setTr_area_english("GYEONGJU");
		GYEONGJU.setTr_area_korea("대한민국 경주");
		GYEONGJU.setTr_area_image("GYEONGJU");

		RecommendCourseDTO GANGNEUNG = new RecommendCourseDTO();
		GANGNEUNG.setTr_area_english("GANGNEUNG");
		GANGNEUNG.setTr_area_korea("대한민국 강릉");
		GANGNEUNG.setTr_area_image("GANGNEUNG");
		
		RecommendCourseDTO YEOSU = new RecommendCourseDTO();
		YEOSU.setTr_area_english("YEOSU");
		YEOSU.setTr_area_korea("대한민국 여수");
		YEOSU.setTr_area_image("YEOSU");
		
		RecommendCourseDTO GEOJETONGYEONG = new RecommendCourseDTO();
		GEOJETONGYEONG.setTr_area_english("GEOJETONGYEONG");
		GEOJETONGYEONG.setTr_area_korea("대한민국 거제통영");
		GEOJETONGYEONG.setTr_area_image("GEOJETONGYEONG");
		
		RecommendCourseDTO NAMWON = new RecommendCourseDTO();
		NAMWON.setTr_area_english("NAMWON");
		NAMWON.setTr_area_korea("대한민국 남원");
		NAMWON.setTr_area_image("NAMWON");
		
		RecommendCourseDTO JEONJU = new RecommendCourseDTO();
		JEONJU.setTr_area_english("JEONJU");
		JEONJU.setTr_area_korea("대한민국 전주");
		JEONJU.setTr_area_image("JEONJU");
		
		RecommendCourseDTO POHANG = new RecommendCourseDTO();
		POHANG.setTr_area_english("POHANG");
		POHANG.setTr_area_korea("대한민국 포항");
		POHANG.setTr_area_image("POHANG");
		
		RecommendCourseDTO DAEJEON = new RecommendCourseDTO();
		DAEJEON.setTr_area_english("DAEJEON");
		DAEJEON.setTr_area_korea("대한민국 대전");
		DAEJEON.setTr_area_image("DAEJEON");
		
		RecommendCourseDTO INCHEON = new RecommendCourseDTO();
		INCHEON.setTr_area_english("INCHEON");
		INCHEON.setTr_area_korea("대한민국 인천");
		INCHEON.setTr_area_image("INCHEON");
		
		RecommendCourseDTO CHUNCHEON = new RecommendCourseDTO();
		CHUNCHEON.setTr_area_english("CHUNCHEON");
		CHUNCHEON.setTr_area_korea("대한민국 춘천");
		CHUNCHEON.setTr_area_image("CHUNCHEON");
		
		RecommendCourseDTO GUNSAN = new RecommendCourseDTO();
		GUNSAN.setTr_area_english("GUNSAN");
		GUNSAN.setTr_area_korea("대한민국 군산");
		GUNSAN.setTr_area_image("GUNSAN");
		
		RecommendCourseDTO MOKPO = new RecommendCourseDTO();
		MOKPO.setTr_area_english("MOKPO");
		MOKPO.setTr_area_korea("대한민국 목포");
		MOKPO.setTr_area_image("MOKPO");
		
		RecommendCourseDTO ANDONG = new RecommendCourseDTO();
		ANDONG.setTr_area_english("ANDONG");
		ANDONG.setTr_area_korea("대한민국 안동");
		ANDONG.setTr_area_image("ANDONG");
		
		RecommendCourseDTO ULLEUNG = new RecommendCourseDTO();
		ULLEUNG.setTr_area_english("ULLEUNG");
		ULLEUNG.setTr_area_korea("대한민국 울릉도");
		ULLEUNG.setTr_area_image("ULLEUNG");
		
		RecommendCourseDTO GAPYEONG = new RecommendCourseDTO();
		GAPYEONG.setTr_area_english("GAPYEONG");
		GAPYEONG.setTr_area_korea("대한민국 가평");
		GAPYEONG.setTr_area_image("GAPYEONG");
		
		RecommendCourseDTO JECHEON = new RecommendCourseDTO();
		JECHEON.setTr_area_english("JECHEON");
		JECHEON.setTr_area_korea("대한민국 제천");
		JECHEON.setTr_area_image("JECHEON");
		
		RecommendCourseDTO SUWON = new RecommendCourseDTO();
		SUWON.setTr_area_english("SUWON");
		SUWON.setTr_area_korea("대한민국 수원");
		SUWON.setTr_area_image("SUWON");
		
		RecommendCourseDTO YEONGWOL = new RecommendCourseDTO();
		YEONGWOL.setTr_area_english("YEONGWOL");
		YEONGWOL.setTr_area_korea("대한민국 영월");
		YEONGWOL.setTr_area_image("YEONGWOL");
		
		list.add(JEJU);
		list.add(BUSAN);
		list.add(SEOUL);
		list.add(GYEONGJU);
		list.add(GANGNEUNG);
		list.add(YEOSU);
		list.add(GEOJETONGYEONG);
		list.add(NAMWON);
		list.add(JEONJU);
		list.add(POHANG);
		list.add(DAEJEON);
		list.add(INCHEON);
		list.add(CHUNCHEON);
		list.add(GUNSAN);
		list.add(MOKPO);
		list.add(ANDONG);
		list.add(ULLEUNG);
		list.add(GAPYEONG);
		list.add(JECHEON);
		list.add(SUWON);
		list.add(YEONGWOL);
		
		model.addAttribute("list", list);
	}
}
