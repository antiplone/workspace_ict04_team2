package com.spring.travel_planner.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.travel_planner.dto.LocationDTO;

@Repository
public class LocationDAOImpl implements LocationDAO {
	
	
	@Autowired
	private SqlSessionTemplate sqlSession;
		
	// 지역 - '구' 목록 조회 ('전국' 제외 시 선택 시)
	@Override
	public List<LocationDTO> locationList(int tc_area) {
		System.out.println("LocationDAOImpl - locationList()");
		
		List<LocationDTO> list = sqlSession.selectList("com.spring.travel_planner.dao.LocationDAO.locationList", tc_area);
		
		return list;
	}
	/*
	@Override
	public List<LocationDTO> selectlocationList(Map<String, Object> map) {
		System.out.println("LocationDAOImpl - selectlocationList()");
		
		
		 * List<LocationDTO> list = sqlSession.selectList(
		 * "com.spring.travel_planner.dao.LocationDAO.selectlocationList", map);
		 
		return null;
		
	}
	*/
	
}
