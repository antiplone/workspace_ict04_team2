package com.spring.travel_planner.dao;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.travel_planner.dto.ReviewCommentDTO;
import com.spring.travel_planner.dto.ReviewDTO;

@Repository
public class ReviewDAOImpl implements ReviewDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 후기 목록
	@Override
	public List<ReviewDTO> reviewList(Map<String, Object> map) {
		System.out.println("ReviewDAOImpl - reviewList");
		
		List<ReviewDTO> list = sqlSession.selectList("com.spring.travel_planner.dao.ReviewDAO.reviewList", map);
		return list;
	}

	// 후기 개수
	@Override
	public int reviewCnt() {
		System.out.println("ReviewDAOImpl - reviewCnt");
		
		int total = sqlSession.selectOne("com.spring.travel_planner.dao.ReviewDAO.reviewCnt");
		return total;
	}

	// 후기 조회수
	@Override
	public void reviewViews(int r_num) {
		System.out.println("ReviewDAOImpl - reviewViews");
		
		sqlSession.update("com.spring.travel_planner.dao.ReviewDAO.reviewViews", r_num);
	}
	
	// 후기 상세페이지
	@Override
	public ReviewDTO reviewDetail(int r_num) {
		System.out.println("DAO - reviewDetail");
		
		ReviewDTO dto = sqlSession.selectOne("com.spring.travel_planner.dao.ReviewDAO.reviewDetail", r_num);
		return dto;
	}

	// 후기 수정화면 이동
	@Override
	public ReviewDTO getReivew(int hiddenR_num) {
		System.out.println("리뷰DAO - getReivew");
		return sqlSession.selectOne("com.spring.travel_planner.dao.ReviewDAO.getReivew", hiddenR_num);
	}
	
	// 후기 수정처리
	@Override
	public int reviewUpdate(ReviewDTO dto) {
		System.out.println("ReviewDAOImpl - reviewUpdate");
		
		int updateCnt = sqlSession.update("com.spring.travel_planner.dao.ReviewDAO.reviewUpdate", dto);
		return updateCnt;
	}

	// 후기 삭제 
   @Override
   public int reviewDelete(int num) {
      System.out.println("ReviewDAOImpl - reviewDelete");
      
      int deleteCnt = sqlSession.update("com.spring.travel_planner.dao.ReviewDAO.reviewDelete", num);
      return deleteCnt;
   }

	// 후기 작성
	@Override
	public int reviewInsert(ReviewDTO dto) {
		System.out.println("ReviewDAOImpl - reviewInsert");
		
		ReviewDAO dao = sqlSession.getMapper(ReviewDAO.class);
		int insertCnt = dao.reviewInsert(dto);
		
		return insertCnt;
	}

	// main - 조회순으로 리뷰게시글 4개만
	public List<ReviewDTO> mainReviewList(Map<String, Object> map) {
		System.out.println("리뷰DAO - mainReviewList");
		return sqlSession.selectList("com.spring.travel_planner.dao.ReviewDAO.mainReviewList", map);
	}

	// [ 후기 ] 댓글 작성 처리
	@Override
	public int insertComment(ReviewCommentDTO dto) {
		System.out.println("리뷰DAO - 댓글 작성 처리");
		return sqlSession.insert("com.spring.travel_planner.dao.ReviewDAO.insertComment", dto);
	}

	// [ 후기 ] 댓글 목록 처리
	@Override
	public List<ReviewCommentDTO> commentList(int review_num) {
		System.out.println("리뷰DAO - 댓글 목록 처리");
		return sqlSession.selectList("com.spring.travel_planner.dao.ReviewDAO.commentList", review_num);
	}

	// 댓글갯수 처리(후기글에 댓글이 추가될 때마다 숫자가 올라감)
	@Override
	public void plusCommentCnt(int review_num) {
		System.out.println("리뷰DAO - 댓글갯수 처리");
		sqlSession.update("com.spring.travel_planner.dao.ReviewDAO.plusCommentCnt", review_num);
	}
}
