package com.spring.travel_planner.dao;

import java.util.List;
import java.util.Map;

import com.spring.travel_planner.dto.ReviewDTO1;

public interface ReviewDAO1 {
	
	// 후기 목록
	public List<ReviewDTO1> reviewList(Map<String, Object> map);
	
	// 후기 총 건수
	public int reviewCnt();
	
//	// 조회수 증가
//	public int reviewViews(int r_num);
//	
//	// 후기 상세페이지
//	public String reviewDetail(int num);
//	
//	// 후기 수정처리
//	public int reviewUpdate(int r_num);
//	
//	// 후기 삭제처리
//	public int reviewDelete(int num);
//	
//	// 후기 작성
//	public int reviewInsert(ReviewDTO dto);
	
}
