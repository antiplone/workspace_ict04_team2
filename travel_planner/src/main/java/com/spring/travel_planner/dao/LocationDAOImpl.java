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
	
	// 지역 - 메인(기본값 = '전국'리스트)
	@Override
	public List<LocationDTO> locationMainList(Map<String, Object> map) {
		
		System.out.println("LocationDAOImpl - locationMainList()");
		
		List<LocationDTO> list = sqlSession.selectList("com.spring.travel_planner.dao.LocationDAO.locationMainList", map);
		
		return list;
	}

	// 지역 - '구' 목록 조회 ('전국' 제외한 '시' 선택 시)
	@Override
	public List<LocationDTO> locationList(int tc_si_num) {
		
		 System.out.println("LocationDAOImpl - locationList()");
		 
		 List<LocationDTO> list = sqlSession.selectList("com.spring.travel_planner.dao.LocationDAO.locationList", tc_si_num);
		 
		return list;
	}
	
	// 여행지 갯수 카운트
	@Override
	public int locationCnt() {
		System.out.println("LocationDAOImpl - locationCnt()");
		
		int total = sqlSession.selectOne("com.spring.travel_planner.dao.LocationDAO.locationCnt");
		
		return total;
	}
	 
	// 지역 - '구' 선택 시 해당 리스트들 조회
	@Override
	public List<LocationDTO> selectlocationList(List<String> list) {
		System.out.println("LocationDAOImpl - selectlocationList()");
		 
		List<LocationDTO> result = sqlSession.selectList("com.spring.travel_planner.dao.LocationDAO.selectlocationList", list);
		 
		return result;
	} 

	// 지역 - '구'에서 '전체' 선택 시 해당 리스트들 조회
	@Override
	public List<LocationDTO> selectlocationAllList(String area) {
		System.out.println("LocationDAOImpl - selectlocationList()");
		
		List<LocationDTO> result = sqlSession.selectList("com.spring.travel_planner.dao.LocationDAO.selectlocationAllList", area);
		 
		return result;
	}
	
	// 지역 - 여행지 클릭 시 상세페이지 조회
	@Override
	public LocationDTO locationDetailPage(int ti_num) {

		LocationDTO dto = sqlSession.selectOne("com.spring.travel_planner.dao.LocationDAO.locationDetailPage", ti_num);
		
		return dto;
	}
	
}
