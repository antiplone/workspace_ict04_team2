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

}
