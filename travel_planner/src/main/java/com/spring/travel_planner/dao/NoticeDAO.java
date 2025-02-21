package com.spring.travel_planner.dao;

import java.util.List;
import java.util.Map;

import com.spring.travel_planner.dto.NoticeDTO;

public interface NoticeDAO {
	
	// 지역 - '구' 목록 조회 ('전국' 제외 시 선택 시)
	public List<NoticeDTO> noticelist(Map<String, Object> map);

	// 공지사항 목록 갯수
	public int noticeCnt();
	
	// 조회수 증가
	public void plusReadCnt(int notice_num);
	
	//게시글 상세페이지
	public NoticeDTO getNoticeDetail(int notice_num);
	
	// 게시글 수정 삭제 시 비밀번호 인증
	public int password_chk(Map<String, Object> map);
	
	// 게시글 작성 처리
	public int insertNotice(NoticeDTO dto);
	
	// 게시글 수정처리
	public int updateNotice(NoticeDTO dto);
	
	public int deleteNotice(int noticeNum);
}
