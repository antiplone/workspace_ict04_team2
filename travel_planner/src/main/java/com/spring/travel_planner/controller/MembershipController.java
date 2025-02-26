package com.spring.travel_planner.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.travel_planner.dao.MemberDAOImpl;
import com.spring.travel_planner.dao.ReviewDAOImpl;
import com.spring.travel_planner.dto.ReviewDTO;
import com.spring.travel_planner.page.Paging;
import com.spring.travel_planner.service.NoticeServiceImpl;
import com.spring.travel_planner.sys.EmailUtil;

@Controller
public class MembershipController {

	@Autowired
	private MemberDAOImpl mem;

	@Autowired 
	private ReviewDAOImpl review;

	@Autowired
	private NoticeServiceImpl notice;


	@GetMapping(value = "/signinMember.do")
	private ModelAndView resumeMember() {
		ModelAndView mnv = new ModelAndView("member/signin");

		return mnv;
	}

	@PostMapping(value = "/sendAuthMember.do")
	private ModelAndView sendAuthMember(HttpServletRequest req) {

		ModelAndView mnv = new ModelAndView("member/signin_auth");

		final String fromEmail = "bd4e48d4fc319d"; //requires valid gmail id
		final String password = "ba6ecd04bdec07"; // correct password for gmail id
		final String toEmail = req.getParameter("login_email"); // can be any email id 

		System.out.println("TLSEmail Start");
		Properties props = new Properties();
		props.put("mail.smtp.host", "sandbox.smtp.mailtrap.io"); //SMTP Host
		props.put("mail.smtp.port", "587"); //TLS Port
		props.put("mail.smtp.auth", "true"); //enable authentication
		props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS

		//create Authenticator object to pass in Session.getInstance argument
		Authenticator auth = new Authenticator() {
			//override the getPasswordAuthentication method
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(fromEmail, password);
			}
		};
		Session session = Session.getInstance(props, auth);

		String authCode = Integer.toHexString(Math.round((float)Math.random() * 16));
		for (int n = 1; n < 8; n++) {
			authCode = authCode.concat(Integer.toHexString(Math.round((float)Math.random() * 16)));
		}
		System.out.println(toEmail + " : " + authCode);
		mnv.addObject("email", toEmail);
		mnv.addObject("authCode", authCode);

		EmailUtil.sendEmail(session, toEmail,"여기닷에서 인증메일을 보냅니다.", "인증 코드 : " + authCode);

		return mnv;
	}

	@GetMapping(value = "/signinMemberAction.do")
	private String signinMember(HttpServletRequest req) {

		String email = req.getParameter("email");
		String name = req.getParameter("name");
		String pwd = req.getParameter("password");
	
		System.out.println(req.getQueryString());

		mem.signin_action(email, name, pwd);

		return "common/home";
	}

	@GetMapping(value = "/admin.do")
	private String moveAdmin(HttpServletRequest req) {
		System.out.println(req.getParameter("admin"));
		return "member/admin_action";
	}

	@RequestMapping(value = "/admin_action.do", method = {RequestMethod.GET, RequestMethod.POST})
	private @ResponseBody Object adminAction(@RequestBody String cmd) {
		List<String> cmdStruct = List.of(cmd.split(":"));
		if (cmdStruct.size() < 2) {
			System.out.println(cmdStruct);
			Map<String, Object> error = new HashMap<String, Object>();
			error.put("error", JSONArray.toJSONString(cmdStruct));
			return JSONObject.toJSONString(error);
		}

		switch(cmdStruct.get(0)) {
			case "공지사항" :
				if (cmdStruct.get(1).equals("작성")) {
					ModelAndView mnv = new ModelAndView("admin/csCenter/notice_insert");					
					return mnv;
				}
				break;

			case "후기" :
				if (cmdStruct.get(1).equals("목록")) {
					ModelAndView mnv = new ModelAndView("community/review/reviewList");
						Paging paging = new Paging(null);
						int total = review.reviewCnt();
						
						paging.setPageSize(total);
						paging.setTotalCount(total);
						
						int start = paging.getStartRow();
						int end = paging.getEndRow();
						
						Map<String, Object> map = new HashMap<String, Object>();
						map.put("start", start);
						map.put("end", end);
						
						List<ReviewDTO> list = review.reviewList(map);
						
						// 후기 총 건수
						mnv.addObject("total", total);
						mnv.addObject("list", list);
						mnv.addObject("paging", paging);
					return mnv;
				}
				else if (cmdStruct.get(1).equals("작성")) {
					ModelAndView mnv = new ModelAndView("community/review/reviewWrite");					
					return mnv;
				}
				break;

			default :
				System.out.println("기능이 없는데?!");
		}

		return null;
	}
}
