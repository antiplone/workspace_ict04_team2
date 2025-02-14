package com.spring.travel_planner.dao;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import org.springframework.ui.Model;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.travel_planner.dto.RecommendCourseDTO2;
import com.spring.travel_planner.page.Paging;

@Repository
public class HomeDAOImpl implements HomeDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	private static Logger logger = LoggerFactory.getLogger(HomeDAOImpl.class);

	private DataSource dataSource;
	private ResultSet rs;
	private String sql;
	
	@PostConstruct
	public void init() {
		try {
			dataSource = InitialContext.doLookup("java:comp/env/jdbc/travel_planner");
		}
		catch (NamingException exc) {
			exc.printStackTrace();
		}
	}
	
	public void recommendAction(HttpServletRequest req, HttpServletResponse response, Model model)
			throws ServletException, IOException {
		// 3단계. 화면에서 입력받은 값을 가져오기
		String pageNum=req.getParameter("pageNum");
		System.out.println(pageNum);
		// 4단계. 싱글톤 방식으로 DAO 객체 생성, 다형성 적용
		
		// 5-1단계. 전체 게시글 갯수 카운트
		Paging paging = new Paging(pageNum);
	}
	
	public List<RecommendCourseDTO2> recommendList(Map<String, Object> map) {

		System.out.println(" HomeDAOImpl - recommendList ");
		
		List<RecommendCourseDTO2> list = sqlSession.selectList("com.spring.travel_planner.dao.HomeDAO.recommendList", map);
		
		return list;
	}
	
	public int recommendCnt() {
		System.out.println("HomeDAOImpl - recommedcnt ");
		int total = 0;
//		int total = sqlSession.selectOne("com.spring.travel_planner.dao.MemberDAO.recommendCnt");
//		System.out.println(" MemberDAOImpl - total " + total);
		
		sql = "SELECT COUNT(rownum) AS rn FROM travle_review_tb where r_show='y'";
		try (Connection conn = dataSource.getConnection()) {
			try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
				rs = pstmt.executeQuery();
				if (rs.next()) {
				logger.info(String.valueOf(total));
					total += rs.getInt("rn");
				}
			}
		}
		catch (SQLException exc) {
			exc.printStackTrace();
		}
		return total;
	}

	@PreDestroy
    public void expire() {
		dataSource = null;
    }

}
