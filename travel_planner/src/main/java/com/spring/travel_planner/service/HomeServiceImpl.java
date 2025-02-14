package com.spring.travel_planner.service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.ui.Model;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.travel_planner.dao.HomeDAOImpl;
import com.spring.travel_planner.dto.RecommendCourseDTO2;
import com.spring.travel_planner.page.Paging;

@Service
public class HomeServiceImpl {
	
	@Autowired
	private HomeDAOImpl Hdao;
	
	public void MemberListAction(HttpServletRequest req, HttpServletResponse res, Model model)
			throws ServletException, IOException {
		System.out.println("<<< MemberServiceImpl - MemberListAction >>>");
		
		// 3단계. 화면에서 입력받은 값을 가져오기
		String pageNum=req.getParameter("pageNum");
		System.out.println(pageNum);
		// 4단계. 싱글톤 방식으로 DAO 객체 생성, 다형성 적용
		
		// 5-1단계. 전체 게시글 갯수 카운트
		Paging paging = new Paging(pageNum);
		
		int total = Hdao.recommendCnt();
		
		System.out.println("total => " + total);
		
		paging.setTotalCount(total);
				
		// 5-2단계. 게시글 목록 조회
		int start = 1;
		int end = 9;
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("start",start);
		map.put("end",end);
		
		List<RecommendCourseDTO2> list1 = Hdao.recommendList(map);
		/* System.out.println("list1 => " + list1); */
		
		System.out.println("BoardCommentDTO list1 => " + list1);
		
		// 6단계. jsp로 처리결과 전달
		model.addAttribute("list1", list1);
		model.addAttribute("paging", paging);
		
		/* System.out.println("list1" + list1); */
	}

}
