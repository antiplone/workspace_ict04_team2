package com.spring.travel_planner.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.spring.travel_planner.dao.ReviewDAOImpl;
import com.spring.travel_planner.dto.ReviewCommentDTO;
import com.spring.travel_planner.dto.ReviewDTO;
import com.spring.travel_planner.page.Paging;

@Service
public class ReviewServiceImpl implements ReviewService {

	@Autowired 
	private ReviewDAOImpl dao;
	
	@Autowired
	private ReviewCommentDTO commDTO;
	
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
	public void reviewDetailAction(HttpServletRequest request, HttpServletResponse response,  Model model) 
			throws ServletException, IOException {
		System.out.println("리뷰service - reviewDetailAction");
		
		int r_num = Integer.parseInt(request.getParameter("r_num"));
		System.out.println("r_num : " + r_num);

		dao.reviewViews(r_num);
		
		ReviewDTO dto = dao.reviewDetail(r_num);
		
		model.addAttribute("dto", dto);
	}

	// 후기 수정화면 이동
	@Override
	public void reviewUpdate(MultipartHttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("리뷰service - reviewUpdate");

		String pageNum = request.getParameter("pageNum");
		String r_img = request.getParameter("r_img");
		int r_num = Integer.parseInt(request.getParameter("r_num"));
		
		System.out.println("r_num: " + r_num);
		System.out.println("pageNum: " + pageNum);
		System.out.println("r_img: " + r_img);
		
		ReviewDTO dto = new ReviewDTO();
		dto.setR_num(r_num);
		dto.setR_title(request.getParameter("r_title"));
		dto.setR_content(request.getParameter("r_content"));
		dto.setR_img(r_img);
		dto.setM_name(request.getParameter("m_member"));
		
		ReviewDTO dto2 = dao.getReivew(r_num);
		
		model.addAttribute("dto2", dto2);
		model.addAttribute("r_num", r_num);
		model.addAttribute("r_img", r_img);
	}
	
	// 후기 수정 처리
	@Override
	public void reviewUpdateAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model) 
			throws ServletException, IOException {
		System.out.println("리뷰service - reviewUpdateAction");
		
		String hiddenPageNum = request.getParameter("hiddenPageNum");
		System.out.println("hiddenPageNum: " + hiddenPageNum);
		
		int hiddenR_num = Integer.parseInt(request.getParameter("hiddenR_num"));
		System.out.println("hiddenR_num: " + hiddenR_num);
		
		String hiddenR_img = request.getParameter("hiddenR_img");
		System.out.println("hiddenR_img: " + hiddenR_img);
		
		// ------------------------------------------------------
		
		MultipartFile file = request.getFile("r_img");
		System.out.println("file: " + file);
		
		String saveDir = request.getSession().getServletContext().getRealPath("/resources/images/review/upload/");	// 폴더 생성
		System.out.println("saveDir: " + saveDir);
		
		String realDir = "D:\\DEV\\workspace_ict04_team2\\travel_planner\\src\\main\\webapp\\resources\\images\\review\\upload\\";
		System.out.println("realDir: " + realDir);
		
		FileInputStream fis = null;
		FileOutputStream fos = null;
		
		String r_img1 = "";	
		
		if(file.getOriginalFilename() != null && file.getOriginalFilename() != "") {	// 추가
			try {
				file.transferTo(new File(saveDir + file.getOriginalFilename()));	// import java.io.File
				fis = new FileInputStream(saveDir + file.getOriginalFilename());
				fos = new FileOutputStream(realDir + file.getOriginalFilename());
				
				int data = 0;
				while((data = fis.read()) != -1) {
					fos.write(data);
				}
				
				r_img1 = "/travel_planner/resources/images/review/upload/" + file.getOriginalFilename();
				System.out.println("r_img1: " + r_img1);
				
			} catch(IOException e) {
				e.printStackTrace();
			} finally {
				if(fis != null) fis.close();
				if(fos != null) fos.close();
			}
		}
		
		// 추가
		else {
			// 기존 이미지 사용(이미지 수정 안 할 경우)
			r_img1 = hiddenR_img;
			System.out.println("r_img1: " + r_img1);
		}
		
		// 화면에서 입력받은 값 가져오기
		ReviewDTO dto = new ReviewDTO();
		dto.setR_num(hiddenR_num);
		dto.setM_name(request.getParameter("hiddenM_name"));
		dto.setR_title(request.getParameter("r_title"));
		dto.setR_img(r_img1);
		dto.setR_content(request.getParameter("r_content"));
		
		int updateCnt = dao.reviewUpdate(dto);
		System.out.println("updateCnt : " + updateCnt);
		
		model.addAttribute("updateCnt", updateCnt);
		model.addAttribute("hiddenPageNum", hiddenPageNum);	// 추가
		model.addAttribute("hiddenR_num", hiddenR_num);
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

   // 후기 작성
	@Override
	public void reviewInsertAction(MultipartHttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("리뷰Service - reviewInsertAction()");
		
		String hiddenM_name = request.getParameter("hiddenM_name");
		System.out.println("hiddenM_name" + hiddenM_name);
		
		MultipartFile file = request.getFile("r_img");
		System.out.println("file: " + file);
		
		String saveDir = request.getSession().getServletContext().getRealPath("/resources/images/review/upload/");
		System.out.println("saveDir: " + saveDir);
		
		String realDir = "D:\\DEV\\workspace_ict04_team2\\travel_planner\\src\\main\\webapp\\resources\\images\\review\\upload\\";
		System.out.println("realDir: " + realDir);
		
		FileInputStream fis = null;
		FileOutputStream fos = null;
		
		try {
			file.transferTo(new File(saveDir + file.getOriginalFilename()));
			fis = new FileInputStream(saveDir + file.getOriginalFilename());
			fos = new FileOutputStream(realDir + file.getOriginalFilename());
			
			int data = 0;
			while((data = fis.read()) != -1) {
				fos.write(data);
			}
			
			ReviewDTO dto = new ReviewDTO();
			
			dto.setM_name(request.getParameter("hiddenM_name"));
			dto.setR_title(request.getParameter("r_title"));
			
			String r_img1 = "/travel_planner/resources/images/review/upload/" + file.getOriginalFilename();
			System.out.println("r_img1: " + r_img1);
			
			dto.setR_img(r_img1);
			dto.setR_content(request.getParameter("r_content"));
			
			int insertCnt = dao.reviewInsert(dto);
			
			model.addAttribute("insertCnt", insertCnt);
			model.addAttribute("hiddenM_name", hiddenM_name);
			
		} catch(IOException e) {
			e.printStackTrace();
		} finally {
			if(fis != null) fis.close();
			if(fos != null) fos.close();
		}
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

	// [ 후기 ] 댓글 작성 처리
	@Override
	public void commentAddAction(HttpServletRequest req, HttpServletResponse res, Model model)
			throws ServletException, IOException {
		System.out.println("리뷰Service - 댓글 작성 처리");
		
		// 화면에서 입력받은 값(jQuery에서 넘긴 값)을 가져와서 DTO에 담는다.
		commDTO.setRc_num(Integer.parseInt(req.getParameter("review_num")));
		commDTO.setRc_comment(req.getParameter("comment"));
		commDTO.setM_member(req.getParameter("member"));
		
		// 댓글갯수가 추가될 때마다 댓글수도 update
		if(dao.insertComment(commDTO) > 0) {
			dao.plusCommentCnt(Integer.parseInt(req.getParameter("review_num")));
		}
	}

	// [ 후기 ] 댓글 목록 처리
	@Override
	public void commentListAction(HttpServletRequest req, HttpServletResponse res, Model model)
			throws ServletException, IOException {
		System.out.println("리뷰Service - 댓글 목록 처리");
		
		// 화면에서 입력받은 값(jQuery에서 넘긴 값)을 가져온다.
		int review_num = Integer.parseInt(req.getParameter("review_num"));
		
		// 댓글 작성처리 후 컨트롤러에서 list로 이동
		List<ReviewCommentDTO> list = dao.commentList(review_num);
		
		// jsp로 처리결과 전달
		model.addAttribute("list", list);
	}
}
