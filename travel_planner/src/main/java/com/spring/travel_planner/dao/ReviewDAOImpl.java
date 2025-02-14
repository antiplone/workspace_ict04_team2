package com.spring.travel_planner.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.travel_planner.dto.ReviewDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public List<ReviewDTO> reviewList(Map<String, Object> map) {
		System.out.println("ReviewDAOImpl - reviewList");
		
		List<ReviewDTO> list = sqlSession.selectList("com.spring.travel_planner.dao.ReviewDAO.reviewList", map);
		
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

	// main - 조회순으로 리뷰게시글 4개만
	public List<ReviewDTO> mainReviewList(Map<String, Object> map) {
		System.out.println("리뷰DAO - mainReviewList");
		return sqlSession.selectList("com.spring.travel_planner.dao.ReviewDAO.mainReviewList", map);
	}
	
}
