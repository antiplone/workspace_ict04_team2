package com.spring.travel_planner.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.travel_planner.dto.ReviewDTO1;

@Repository
public class ReviewDAOImpl implements ReviewDAO1 {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<ReviewDTO1> reviewList(Map<String, Object> map) {
		System.out.println("ReviewDAOImpl - reviewList");
		
		List<ReviewDTO1> list = sqlSession.selectList("com.spring.travel_planner.dao.ReviewDAO1.reviewList", map);
		
		return list;
	}

	@Override
	public int reviewCnt() {
		return 0;
	}

//	@Override
//	public int reviewViews(int r_num) {
//		return 0;
//	}
//
//	@Override
//	public String reviewDetail(int r_num) {
//		return null;
//	}
//
//	@Override
//	public int reviewUpdate(int r_num) {
//		return 0;
//	}
//
//	@Override
//	public int reviewDelete(int r_num) {
//		return 0;
//	}
//
//	@Override
//	public int reviewInsert(ReviewDTO dto) {
//		return 0;
//	}

}
