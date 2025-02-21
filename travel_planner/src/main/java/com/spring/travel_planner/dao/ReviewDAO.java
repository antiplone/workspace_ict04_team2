package com.spring.travel_planner.dao;

import java.util.List;
import java.util.Map;

import com.spring.travel_planner.dto.ReviewCommentDTO;
import com.spring.travel_planner.dto.ReviewDTO;

public interface ReviewDAO {
	
	// 후기 목록
	public List<ReviewDTO> reviewList(Map<String, Object> map);
	
	// 후기 총 건수
	public int reviewCnt();
	
	// 조회수 증가
	public void reviewViews(int r_num);
	
	// 후기 상세페이지
	public ReviewDTO reviewDetail(int num);

	// 후기 수정화면 이동
	public ReviewDTO getReivew(int r_num);
	
	// 후기 수정처리
	public int reviewUpdate(ReviewDTO dto);

	// 후기 삭제처리
	public int reviewDelete(int num);

	// 후기 작성
	public int reviewInsert(ReviewDTO dto);

	// main - 조회순으로 리뷰게시글 4개만
	public List<ReviewDTO> mainReviewList(Map<String, Object> map);
	
	// [ 후기 ] 댓글 작성 처리
	public int insertComment(ReviewCommentDTO dto);
	
	// [ 후기 ] 댓글 목록 처리
	public List<ReviewCommentDTO> commentList(int review_num);
	
	// 댓글갯수 처리(후기글에 댓글이 추가될 때마다 숫자가 올라감)
	public void plusCommentCnt(int review_num);
}
