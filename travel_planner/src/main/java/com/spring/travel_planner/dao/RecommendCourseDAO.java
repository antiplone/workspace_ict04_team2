package com.spring.travel_planner.dao;

import java.util.List;
import com.spring.travel_planner.dto.RecommendCourseDTO;


public interface RecommendCourseDAO {
	
	// 지역 목록
	public List<RecommendCourseDTO> areaList();
}
