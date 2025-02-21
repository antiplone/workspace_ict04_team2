package com.spring.travel_planner.dao;

import java.util.List;
import com.spring.travel_planner.dto.RecommendCourseDTO;


public interface RecommendCourseDAO {
	
	// 지역 목록
	public List<RecommendCourseDTO> areaList();
	
	// 추천코스 목록
	public List<RecommendCourseDTO> recommendCouresList(int tr_area_id);
	
	// 추천코스 상세 목록
	public List<RecommendCourseDTO> recommendCourseDetailList(int tr_course_id);
}
