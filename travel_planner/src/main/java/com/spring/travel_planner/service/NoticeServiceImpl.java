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
		String pageNum=req.getParameter("pageNum");
		
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
		System.out.println("<<< NoticeServiceImpl - noticeDetailAction >>>");
		
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
		 int notice_num = Integer.parseInt(request.getParameter("noticeNum"));
		 String notice_password = request.getParameter("notice_password");
		 System.out.println("notice_password " + notice_password);
		 
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
		 
		 System.out.println("notice_num = " + notice_num);
		 // 7단계. 인증결과 리턴
		 return result;
	}

	@Override
	public void noticeUpdateAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("<<< NoticeServiceImpl - noticeUpdateAction >>>");
		int notice_num = Integer.parseInt(request.getParameter("noticeNum"));
		System.out.println("notice_num " + notice_num);
		// dto 생성
		NoticeDTO Ndto = new NoticeDTO();
		Ndto.setNoticeNum(notice_num);
		Ndto.setNoticePassword(request.getParameter("notice_password"));
		Ndto.setNoticeTitle(request.getParameter("noticeTitle"));
		Ndto.setNoticeContent(request.getParameter("noticeContent"));
		Ndto.setNoticereadCnt(Ndto.getnoticeReadCnt());
		Ndto.setNoticeRegDate(Ndto.getNoticeRegDate());
		Ndto.setNoticeShow(Ndto.getNoticeShow());
		
		System.out.println(request.getParameter("notice_password"));
		System.out.println(request.getParameter("noticeTitle"));
		System.out.println(request.getParameter("noticeContent"));
		
		System.out.println("Ndto " + Ndto);
		
		// 5단계. 게시판 수정 DAO 호출 
		nodao.updateNotice(Ndto);
		
	}

	@Override
	public void noticeDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("<<< NoticeServiceImpl - noticeDeleteAction >>>");
		// 3단계. 화면에서 입력받은 값(hidden 포함)을 가져오기
				int notice_num = Integer.parseInt(request.getParameter("noticeNum"));
				 
				int deleteCnt = nodao.deleteNotice(notice_num);
				 
				model.addAttribute("deleteCnt", deleteCnt);
	}

	@Override
	public void noticeInsertAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("<<< NoticeServiceImpl - noticeInsertAction >>>");
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
