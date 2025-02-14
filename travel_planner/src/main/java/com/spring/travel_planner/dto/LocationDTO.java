package com.spring.travel_planner.dto;

public class LocationDTO {
	
	
	public LocationDTO() {}
	
	// 테스트
	private String detail_imgUrl;	// 여행지 상세페이지 - 이미지 주소
	private String detail_url;		// 여행지 상세페이지 - 링크 주소
	private String detail_name;		// 여행지 상세페이지 - 여행지명
	private String detail_location;	// 여행지 상세페이지 - 지역
	
	// 지역
	private int tc_num;				// 지역 번호
	private String tc_area;			// 지역(시)
	private String tc_gu;			// 지역(구)
	private int tc_si_num;			// 지역(시) 번호
	private int tc_gu_num;			// 지역(구) 번호
	
	public String getDetail_imgUrl() {
		return detail_imgUrl;
	}
	public void setDetail_imgUrl(String detail_imgUrl) {
		this.detail_imgUrl = detail_imgUrl;
	}
	public String getDetail_url() {
		return detail_url;
	}
	public void setDetail_url(String detail_url) {
		this.detail_url = detail_url;
	}
	public String getDetail_name() {
		return detail_name;
	}
	public void setDetail_name(String detail_name) {
		this.detail_name = detail_name;
	}
	public String getDetail_location() {
		return detail_location;
	}
	public void setDetail_location(String detail_location) {
		this.detail_location = detail_location;
	}
	public int getTc_num() {
		return tc_num;
	}
	public void setTc_num(int tc_num) {
		this.tc_num = tc_num;
	}
	public String getTc_area() {
		return tc_area;
	}
	public void setTc_area(String tc_area) {
		this.tc_area = tc_area;
	}
	public String getTc_gu() {
		return tc_gu;
	}
	public void setTc_gu(String tc_gu) {
		this.tc_gu = tc_gu;
	}
	public int getTc_si_num() {
		return tc_si_num;
	}
	public void setTc_si_num(int tc_si_num) {
		this.tc_si_num = tc_si_num;
	}
	public int getTc_gu_num() {
		return tc_gu_num;
	}
	public void setTc_gu_num(int tc_gu_num) {
		this.tc_gu_num = tc_gu_num;
	}
	
	@Override
	public String toString() {
		return "LocationDTO [detail_imgUrl=" + detail_imgUrl + ", detail_url=" + detail_url + ", detail_name="
				+ detail_name + ", detail_location=" + detail_location + ", tc_num=" + tc_num + ", tc_area=" + tc_area
				+ ", tc_gu=" + tc_gu + ", tc_si_num=" + tc_si_num + ", tc_gu_num=" + tc_gu_num + "]";
	}

}


/*  ==== 여행 지역(시/구) 테이블 ====
 * CREATE TABLE travel_tourcity_tbl( tc_num NUMBER(38) PRIMARY KEY, -- 지역 번호
 * tc_area VARCHAR2(50), -- 지역(시) tc_gu VARCHAR2(50), -- 지역(구) tc_si_num
 * NUMBER(38), -- 시 번호 tc_gu_num NUMBER(38) -- 구 번호 );
 */