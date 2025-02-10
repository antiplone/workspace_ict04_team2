package com.spring.travel_planner.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.travel_planner.dto.ReviewDTO;

@Repository
public class ReviewDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 리뷰 개수
	public int mainReviewCnt() {
		System.out.println("리뷰DAO - reviewCnt");
		return sqlSession.selectOne("com.spring.travel_planner.dao.ReviewDAO.mainReviewCnt");
	}
	
	// 조회순으로 리뷰게시글 4개만
	public List<ReviewDTO> mainReviewList(Map<String, Object> map) {
		System.out.println("리뷰DAO - reviewList");
		return sqlSession.selectList("com.spring.travel_planner.dao.ReviewDAO.mainReviewList", map);
	}
}
