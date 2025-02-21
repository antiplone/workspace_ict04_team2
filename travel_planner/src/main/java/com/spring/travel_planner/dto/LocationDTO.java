package com.spring.travel_planner.dto;

public class LocationDTO {
	
	
	public LocationDTO() {}
	
	// 지역
	private int tc_num;					// 지역 번호
	private String tc_area;				// 지역(시)
	private String tc_gu;				// 지역(구)
	private int tc_si_num;				// 지역(시) 번호
	private int tc_gu_num;				// 지역(구) 번호
	
	// 여행지 정보
	private int ti_num; 				// 여행지 번호
	private String ti_language; 		// 언어
	private String ti_thema; 			// 유형 분류
	private String ti_service;     		// 서비스 분류
	private String ti_location;     	// 지역 (시, 구)
	private String ti_name;				// 여행지명
	private String ti_content; 			// 여행지 간략 설명
	private String ti_content_big; 		// 여행지 공간소개
	private String ti_qna;		   		// 여행지 문의처
	private String ti_url;		  		// 여행지 홈페이지
	private String ti_address;	   		// 여행지 주소
	private String ti_open;				// 여행지 이용시간
	private String ti_holiday;	   		// 여행지 휴일
	private String ti_parking;	   		// 여행지 주차 가능여부
	private String ti_parking2;	   		// 여행지 장애인 주차 가능여부
	private String ti_admission;   		// 여행지 입장료
	private String ti_detail_imgUrl;    // 여행지 대표이미지 주소
	private String ti_detail_url;   	// 여행지 대표이미지 저장명
	private String ti_detail_url2;   	// 여행지 추가 이미지 저장명
	
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
	public int getTi_num() {
		return ti_num;
	}
	public void setTi_num(int ti_num) {
		this.ti_num = ti_num;
	}
	public String getTi_language() {
		return ti_language;
	}
	public void setTi_language(String ti_language) {
		this.ti_language = ti_language;
	}
	public String getTi_thema() {
		return ti_thema;
	}
	public void setTi_thema(String ti_thema) {
		this.ti_thema = ti_thema;
	}
	public String getTi_service() {
		return ti_service;
	}
	public void setTi_service(String ti_service) {
		this.ti_service = ti_service;
	}
	public String getTi_location() {
		return ti_location;
	}
	public void setTi_location(String ti_location) {
		this.ti_location = ti_location;
	}
	public String getTi_name() {
		return ti_name;
	}
	public void setTi_name(String ti_name) {
		this.ti_name = ti_name;
	}
	public String getTi_content() {
		return ti_content;
	}
	public void setTi_content(String ti_content) {
		this.ti_content = ti_content;
	}
	public String getTi_content_big() {
		return ti_content_big;
	}
	public void setTi_content_big(String ti_content_big) {
		this.ti_content_big = ti_content_big;
	}
	public String getTi_qna() {
		return ti_qna;
	}
	public void setTi_qna(String ti_qna) {
		this.ti_qna = ti_qna;
	}
	public String getTi_url() {
		return ti_url;
	}
	public void setTi_url(String ti_url) {
		this.ti_url = ti_url;
	}
	public String getTi_address() {
		return ti_address;
	}
	public void setTi_address(String ti_address) {
		this.ti_address = ti_address;
	}
	public String getTi_open() {
		return ti_open;
	}
	public void setTi_open(String ti_open) {
		this.ti_open = ti_open;
	}
	public String getTi_holiday() {
		return ti_holiday;
	}
	public void setTi_holiday(String ti_holiday) {
		this.ti_holiday = ti_holiday;
	}
	public String getTi_parking() {
		return ti_parking;
	}
	public void setTi_parking(String ti_parking) {
		this.ti_parking = ti_parking;
	}
	public String getTi_parking2() {
		return ti_parking2;
	}
	public void setTi_parking2(String ti_parking2) {
		this.ti_parking2 = ti_parking2;
	}
	public String getTi_admission() {
		return ti_admission;
	}
	public void setTi_admission(String ti_admission) {
		this.ti_admission = ti_admission;
	}
	public String getTi_detail_imgUrl() {
		return ti_detail_imgUrl;
	}
	public void setTi_detail_imgUrl(String ti_detail_imgUrl) {
		this.ti_detail_imgUrl = ti_detail_imgUrl;
	}
	public String getTi_detail_url() {
		return ti_detail_url;
	}
	public void setTi_detail_url(String ti_detail_url) {
		this.ti_detail_url = ti_detail_url;
	}
	public String getTi_detail_url2() {
		return ti_detail_url2;
	}
	public void setTi_detail_url2(String ti_detail_url2) {
		this.ti_detail_url2 = ti_detail_url2;
	}
	
	@Override
	public String toString() {
		return "LocationDTO [tc_num=" + tc_num + ", tc_area=" + tc_area + ", tc_gu=" + tc_gu + ", tc_si_num="
				+ tc_si_num + ", tc_gu_num=" + tc_gu_num + ", ti_num=" + ti_num + ", ti_language=" + ti_language
				+ ", ti_thema=" + ti_thema + ", ti_service=" + ti_service + ", ti_location=" + ti_location
				+ ", ti_name=" + ti_name + ", ti_content=" + ti_content + ", ti_content_big=" + ti_content_big
				+ ", ti_qna=" + ti_qna + ", ti_url=" + ti_url + ", ti_address=" + ti_address + ", ti_open=" + ti_open
				+ ", ti_holiday=" + ti_holiday + ", ti_parking=" + ti_parking + ", ti_parking2=" + ti_parking2
				+ ", ti_admission=" + ti_admission + ", ti_detail_imgUrl=" + ti_detail_imgUrl + ", ti_detail_url="
				+ ti_detail_url + ", ti_detail_url2=" + ti_detail_url2 + "]";
	}

}


/*  

         	==== 여행 지역(시/구) 테이블 ====
CREATE TABLE travel_tourcity_tbl(
	tc_num		   NUMBER(38)     PRIMARY KEY,	 -- 지역 번호 pk
	tc_area    	   VARCHAR2(50), 				 -- 지역(시)
	tc_gu    	   VARCHAR2(50), 				 -- 지역(구)
	tc_si_num	   NUMBER(38),					 -- 시 번호
	tc_gu_num	   NUMBER(38)  				 	 -- 구 번호
);

			==== 여행지 정보 테이블 테이블 ====
CREATE TABLE travel_tourInfo_tbl(
    ti_num         		NUMBER(38)    PRIMARY KEY,    	-- 여행지 번호
	ti_language    		VARCHAR2(50),       	 		-- 언어
	ti_thema   	   		VARCHAR2(50),       			-- 유형 분류
	ti_service     		VARCHAR2(50),       		 	-- 서비스 분류
	tc_num         		NUMBER(38),						-- 지역번호 fk
	ti_location			VARCHAR2(50),					-- 지역 (시, 구)
	ti_name		   		VARCHAR2(50),					-- 여행지명
	ti_content	   		CLOB,							-- 여행지 간략 설명
	ti_content_big 		CLOB,  							-- 여행지 공간소개
	ti_qna		   		VARCHAR2(50),					-- 여행지 문의처
	ti_url		   		CLOB,							-- 여행지 홈페이지
	ti_address	   		CLOB,							-- 여행지 주소
	ti_open		   		CLOB,							-- 여행지 이용시간
	ti_holiday	   		CLOB,							-- 여행지 휴일
	ti_parking	   		CLOB,							-- 여행지 주차 가능여부
	ti_parking2	   		CLOB,							-- 여행지 장애인 주차 가능여부
	ti_admission   		CLOB,							-- 여행지 입장료
	ti_detail_imgUrl    VARCHAR2(50),       	 		-- 여행지 대표이미지 주소
	ti_detail_url   	 VARCHAR2(50),       			-- 여행지 대표이미지 저장명
	ti_detail_url2   	 VARCHAR2(50),       			-- 여행지 추가 이미지 저장명
	CONSTRAINT travel_tourInfo_tbl_fk FOREIGN KEY(tc_num) REFERENCES travel_tourcity_tbl(tc_num)
             ON DELETE CASCADE  --자식테이블에 설정 시, 부모테이블 삭제 시 함께 삭제
);


 */