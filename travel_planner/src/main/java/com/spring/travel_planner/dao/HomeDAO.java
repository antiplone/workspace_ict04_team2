package com.spring.travel_planner.dao;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Repository;

import com.spring.travel_planner.dto.RecommendCourseDTO2;

@Repository
public interface HomeDAO {
	
	public List<RecommendCourseDTO2> recommendList(Map<String, Object> map);

	public int recommendCnt();
	
}
