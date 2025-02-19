package com.spring.travel_planner.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.spring.travel_planner.dao.NoticeDAOImpl;
import com.spring.travel_planner.dto.NoticeDTO;
import com.spring.travel_planner.page.Paging;

@Service
public class NoticeServiceImpl implements NoticeService{
	
	@Autowired
	private NoticeDAOImpl nodao;
	
	public void noticeListAction(HttpServletRequest req, HttpServletResponse res, Model model)
			throws ServletException, IOException{ ;
		System.out.println("<<< NoticeServiceImpl - @Service >>>");
		
		// 3단계. 화면에서 입력받은 값을 가져오기
		String pageNum=req.getParameter("notice_num");
		System.out.println("pageNum" + pageNum);
		// 4단계. 싱글톤 방식으로 DAO 객체 생성, 다형성 적용
		
		// 5-1단계. 전체 게시글 갯수 카운트
		Paging paging = new Paging(pageNum);
		
		int total = nodao.noticeCnt();
		
		System.out.println("total => " + total);
		
		paging.setTotalCount(total);
				
		// 5-2단계. 게시글 목록 조회
		int start=paging.getStartRow();
		int end=paging.getEndRow();
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("start",start);
		map.put("end",end);
		
		List<NoticeDTO> list = nodao.noticelist(map);
		System.out.println("list => " + list);
		
		// 6단계. jsp로 처리결과 전달
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
		
		System.out.println("list" + list);
	
	}

	@Override
	public void noticeDetailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 3단계. get방식으로 넘긴 값을 가져오기
			int notice_num = (Integer)request.getAttribute("notice_num");
			
			// 5-1단계. 조회수 증가
			System.out.println(notice_num);
			
			nodao.plusReadCnt(notice_num);
			
			// 5-2단계. 게시글 상세페이지
			NoticeDTO dto = nodao.getNoticeDetail(notice_num);
			
			// 6단계 		
			request.setAttribute("dto", dto);
}

	@Override
	public int password_chkAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		
		System.out.println("<<< NoticeServiceImpl - password_chkAction>>>");

		// 3단계. 화면에서 입력받은 값(hidden 포함)을 가져오기
		 int notice_num = Integer.parseInt(request.getParameter("hiddenB_num"));
		 String notice_password = request.getParameter("notice_password");
		 
		 Map<String, Object> map = new HashMap<String, Object>();
			
		 map.put("notice_num", notice_num);
		 map.put("notice_password", notice_password);
		 
		 System.out.println("notice_num = " + notice_num);
		 System.out.println("notice_password = " + notice_password);
		 
		 // 5-1단계. 게시글 수정 삭제시 비밀번호 인증 
		 int result = nodao.password_chk(map);
		 
		 // 5-2단계. 상세 페이지 => 수정하기 위해 수정페이지에 뿌린다.
		 NoticeDTO dto = null ;
		 if(result!=0) {
			 dto = nodao.getNoticeDetail(notice_num);
		 }
		 
		 // 6단계. jsp로 처리결과 전달.. dto
		 model.addAttribute("dto", dto); 
		 
		 // 7단계. 인증결과 리턴
		 return result;
	}

	@Override
	public void noticeUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		// dto 생성
		NoticeDTO dto = new NoticeDTO();
		dto.setNoticeNum(Integer.parseInt(request.getParameter("hiddenB_num")));
		dto.setNoticePassword(request.getParameter("b_re_password"));
		dto.setNoticeTitle(request.getParameter("noticeTitle"));
		dto.setNoticeContent(request.getParameter("noticeContent"));
		
		// 5단계. 게시판 수정 DAO 호출 
		nodao.updateNotice(dto);
		
	}

	@Override
	public void noticeDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void noticeInsertAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		// dto 생성
			NoticeDTO dto = new NoticeDTO();
			dto.setNoticeWriter((String)(request.getSession().getAttribute("sessionID")));
			dto.setNoticePassword(request.getParameter("notice_password"));
			dto.setNoticeTitle(request.getParameter("notice_title"));
			dto.setNoticeContent(request.getParameter("notice_content"));
		
		// dao 메서드 수행
		nodao.insertNotice(dto);
			
	}
}
