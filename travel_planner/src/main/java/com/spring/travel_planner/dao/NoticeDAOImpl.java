package com.spring.travel_planner.dao;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.travel_planner.dto.NoticeDTO;

@Repository
public class NoticeDAOImpl implements NoticeDAO{
	// 커넥션 풀 객체를 보관
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	// 공지사항 목록
	@Override
	public List<NoticeDTO> noticelist(Map<String, Object> map) {

		System.out.println(" NoticeDAOImpl - noticelist ");
		
		List<NoticeDTO> list = sqlSession.selectList("com.spring.travel_planner.dao.NoticeDAO.noticelist", map);
		
		return list;
	}

	// 공지사항 게시글 갯수 구하기
	@Override
	public int noticeCnt() {
		System.out.println(" NoticeDAOImpl - noticeCnt ");
		int total = sqlSession.selectOne("com.spring.travel_planner.dao.NoticeDAO.noticeCnt");
		return total;
	}

	@Override
	public void plusReadCnt(int notice_num) {
		System.out.println(" NoticeDAOImpl - plusReadCnt ");
		sqlSession.update("com.spring.travel_planner.dao.NoticeDAO.plusReadCnt", notice_num);
	}

	@Override
	public NoticeDTO getNoticeDetail(int notice_num) {
		System.out.println(" NoticeDAOImpl - getNoticeDetail ");

		NoticeDTO dto = sqlSession.selectOne("com.spring.travel_planner.dao.NoticeDAO.getNoticeDetail", notice_num);
		
		System.out.println("dto " + dto);		
		
		return dto;
	}

	@Override
	public int password_chk(Map<String, Object> map) {
		System.out.println(" NoticeDAOImpl - password_chk ");
		
		int selectCnt = sqlSession.selectOne("com.spring.travel_planner.dao.NoticeDAO.password_chk", map);

		return selectCnt;
	}

	@Override
	public int insertNotice(NoticeDTO dto) {
		System.out.println(" NoticeDAOImpl - insertNotice ");
		int insertCnt = sqlSession.insert("com.spring.travel_planner.dao.NoticeDAO.insertNotice", dto);
		
		return insertCnt;
	}

	@Override
	public int updateNotice(NoticeDTO dto) {
		System.out.println("NoticeDAOImpl - updateNotice ");

		int updateCnt = sqlSession.update("com.spring.travel_planner.dao.NoticeDAO.updateNotice", dto);

		return updateCnt;
	}

	@Override
	public int deleteNotice(int noticeNum) {
		System.out.println("NoticeDAOImpl - deleteNotice ");
		
		int deleteCnt = sqlSession.update("com.spring.travel_planner.dao.NoticeDAO.deleteNotice", noticeNum);
		
		return deleteCnt;
	}

}
