package com.spring.travel_planner.dao;

/*import java.io.IOException;
import java.sql.SQLException;*/
import java.util.List;
import java.util.Map;


import org.mybatis.spring.SqlSessionTemplate;
/*import org.slf4j.Logger;
import org.slf4j.LoggerFactory;*/
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.travel_planner.dto.RecommendCourseDTO;

@Repository
public class HomeDAOImpl implements HomeDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	/* private static Logger logger = LoggerFactory.getLogger(HomeDAOImpl.class); */
	
	public List<RecommendCourseDTO> mainRecommendList(Map<String, Object> map) {

		System.out.println(" HomeDAOImpl - recommendList ");
		
		List<RecommendCourseDTO> list = sqlSession.selectList("com.spring.travel_planner.dao.HomeDAO.mainRecommendList", map);
		
		return list;
	}
	
	public int recommendCnt() {
		System.out.println("HomeDAOImpl - recommedcnt ");
		int total = 0;
		return total;
	}

}
