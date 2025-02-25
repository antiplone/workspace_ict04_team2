package com.spring.travel_planner.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.travel_planner.dto.RecommendCourseDTO;

@Repository
public class RecommendCourseDAOImpl implements RecommendCourseDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 지역 목록
	@Override
	public List<RecommendCourseDTO> areaList() {
		System.out.println("RecommendCourseDAOImpl - areaList()");
		
		List<RecommendCourseDTO> list = sqlSession.selectList("com.spring.travel_planner.dao.RecommendCourseDAO.areaList");
		return list;
	}
	
	// 추천코스 상세 목록
	@Override
	public List<RecommendCourseDTO> recommendCourseDetailList(int tr_course_id) {
		System.out.println("RecommendCourseDAOImpl - recommendCouresList()");
		
		List<RecommendCourseDTO> list = sqlSession.selectList("com.spring.travel_planner.dao.RecommendCourseDAO.recommendCourseDetailList", tr_course_id);
		return list;
	}
	
	// 추천 코스 목록
	@Override
	public List<RecommendCourseDTO> recommendCouresList(int tr_area_id) {
		System.out.println("RecommendCourseDAOImpl - recommendCouresList()");
		
		List<RecommendCourseDTO> list = sqlSession.selectList("com.spring.travel_planner.dao.RecommendCourseDAO.recommendCouresList", tr_area_id);
		return list;
	}

	
}
