package com.spring.travel_planner.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.spring.travel_planner.service.NoticeServiceImpl;

@Controller
public class NoticeController {

	private static final Logger logger = LoggerFactory.getLogger(NoticeController.class);

	@Autowired
	private NoticeServiceImpl nservice;
	
	String viewPage = "";

	@RequestMapping("/noticeList.nt")
	public String noticeList(HttpServletRequest req, HttpServletResponse res, Model model)
			throws ServletException, IOException {
		logger.info("<<< NoticeController - noticeList >>>");

		nservice.noticeListAction(req, res, model);

		return "admin/csCenter/noticeList";
	}

	@RequestMapping("/notice_detailAction.nt")
	public String notice_detailAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("<<< url ==> /notice_detailAction.nt  - noticecontroller >>>");

		int notice_num = Integer.parseInt(request.getParameter("noticeNum"));
		System.out.println("notice_num => " + notice_num);
		
		request.setAttribute("notice_num", notice_num);
		
		nservice.noticeDetailAction(request, response, model);
		
		return "admin/csCenter/notice_detailAction";
	}

	@RequestMapping("/password_chkAction.nt")
	public String password_chkAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("<<< url ==> /password_chkAction.nt  - noticecontroller >>>");

		int result = nservice.password_chkAction(request, response, model);
		if (result != 0) {
			return "admin/csCenter/notice_edit";
		} else {
			System.out.println("<< 비밀번호 불일치 >>");

			String noticeNum = request.getParameter("hiddenB_num");
			viewPage =  request.getContextPath() + "/notice_detailAction.nt?noticeNum=" + noticeNum;
			response.sendRedirect(viewPage);
			return null;
		}
	}

	@RequestMapping("/notice_updateAction.nt")
	public String notice_updateAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("<<< url ==> /notice_updateAction.nt  - controller >>>");

		nservice.noticeUpdateAction(request, response, model);

		viewPage = request.getContextPath() + "/noticeList.nt";
		response.sendRedirect(viewPage);
		return null;
	}

	@RequestMapping("/notice_deleteAction.nt")
	public String notice_deleteAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("<<< url ==> /notice_deleteAction.nt  - controller >>>");
		nservice.noticeDeleteAction(request, response, model);

		viewPage = request.getContextPath() + "/noticeList.nt";
		response.sendRedirect(viewPage);
		return null;
	}

// [게시글 작성 화면]
	@RequestMapping("/notice_insert.nt")
	public String notice_insert(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("<<< url ==> /notice_insert.nt  - controller >>>");
		return "admin/csCenter/notice_insert";
	}

// [게시글 작성 완료]
	@RequestMapping("/notice_insertAction.nt")
	public String notice_insertAction(HttpServletRequest request, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		System.out.println("<<< url ==> /notice_insertAction.nt  - controller >>>");
		nservice.noticeInsertAction(request, response, model);

		viewPage = request.getContextPath() + "/noticeList.nt";
		response.sendRedirect(viewPage);
		return null;
	}

}
