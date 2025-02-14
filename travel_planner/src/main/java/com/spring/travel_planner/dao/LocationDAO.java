package com.spring.travel_planner.dao;

import java.util.List;
import java.util.Map;

import com.spring.travel_planner.dto.LocationDTO;

public interface LocationDAO {
	
	// 지역 - '구' 목록 조회 ('전국' 제외 시 선택 시)
	public List<LocationDTO> locationList(int tc_area);
	
	// 지역 목록 갯수
	public int locationCnt();
	
	/*
	// 지역 - '구' 선택 시 해당 리스트들 조회
	public List<LocationDTO> selectlocationList(Map<String, Object> map);
	*/
	
	// 지역 - '구'선택시 리스트들 조회 테스트 메서드
	public List<LocationDTO> testLocationList(Map<String, Object> map);

}
