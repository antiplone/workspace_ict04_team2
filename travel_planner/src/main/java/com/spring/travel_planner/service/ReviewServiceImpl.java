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

import com.spring.travel_planner.dao.ReviewDAOImpl;
import com.spring.travel_planner.dto.ReviewDTO;
import com.spring.travel_planner.page.Paging;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired 
	private ReviewDAOImpl dao;
	
	// 후기 목록
	@Override
	public void reviewListAction(HttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException {
		System.out.println("ReviewServiceImpl - reviewListAction");
		
		String pageNum = request.getParameter("pageNum");
		
		Paging paging = new Paging(pageNum);
		int total = dao.reviewCnt();
		
		paging.setTotalCount(total);
		
		int start = paging.getStartRow();
		int end = paging.getEndRow();
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		List<ReviewDTO> list = dao.reviewList(map);
		
		// 후기 총 건수
		model.addAttribute("total", total);
		model.addAttribute("list", list);
		model.addAttribute("paging", paging);
	}

	// 후기 상세페이지
	@Override
	public void reviewDetailAction(HttpServletRequest request, Model model) 
			throws ServletException, IOException {
		System.out.println("ReviewServiceImpl - reviewDetailAction");
		
		// reviewList 화면에서 get방식으로 넘긴 값을 가져온다.
		int r_num = Integer.parseInt(request.getParameter("r_num"));
		System.out.println("r_num => " + r_num);

		// 조회수 증가
		dao.reviewViews(r_num);
		
		// 후기 상세페이지
		ReviewDTO dto = dao.reviewDetail(r_num);
		System.out.println("dto => " + dto);
		
		// jsp로 처리결과를 전달
		model.addAttribute("dto", dto);
	}

	@Override
	public void reviewUpdateAction(HttpServletRequest request, Model model) 
			throws ServletException, IOException {
		
	}

	// [후기] 삭제
   @Override
   public void reviewDeleteAction(HttpServletRequest request, HttpServletResponse response, Model model) 
         throws ServletException, IOException {
      System.out.println("리뷰Service - reviewDeleteAction");
      
      System.out.println("r_num => " + request.getParameter("r_num"));
      int num = Integer.parseInt(request.getParameter("r_num"));
      System.out.println("num => " + num);
      
      int deleteCnt = dao.reviewDelete(num);
      
      model.addAttribute("deleteCnt", deleteCnt);
   }

	@Override
	public void reviewInsertAction(HttpServletRequest request, Model model) 
			throws ServletException, IOException {
		
	}

	// 조회순으로 리뷰게시글 4개만
	@Override
	public void mainReviewList(Model model) 
			throws ServletException, IOException {
		System.out.println("리뷰Service - reviewList");
		
		// 목록
		int start = 1;
		int end = 4;
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		
		List<ReviewDTO> list = dao.mainReviewList(map);
		System.out.println(start + "에서 " + end + "까지의 게시글 목록들 : " + list);
		
		// jsp로 처리결과 전달
		model.addAttribute("list", list);
	}
}
