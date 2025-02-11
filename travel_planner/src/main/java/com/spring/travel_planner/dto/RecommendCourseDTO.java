package com.spring.travel_planner.dto;

public class RecommendCourseDTO {
	
	private String tr_area_english;				// 지역 영문
	private String tr_area_korea;				// 지역 한글
	private String tr_area_content;				// 지역 내용
	private String tr_area_image; 				// 지역 이미지
	private String tr_rc_title;  				// 추천코스 제목
	private String tr_rc_day;					// 추천코스 소요일
	private String tr_rc_tag;  					// 추천코스 여행지 태그
	private String tr_rc_travel_destination;	// 추천코스 여행지	
	
	public RecommendCourseDTO() {}

	public RecommendCourseDTO(String tr_area_english, String tr_area_korea, String tr_area_content,
			String tr_area_image, String tr_rc_title, String tr_rc_day, String tr_rc_tag,
			String tr_rc_travel_destination) {
		super();
		this.tr_area_english = tr_area_english;
		this.tr_area_korea = tr_area_korea;
		this.tr_area_content = tr_area_content;
		this.tr_area_image = tr_area_image;
		this.tr_rc_title = tr_rc_title;
		this.tr_rc_day = tr_rc_day;
		this.tr_rc_tag = tr_rc_tag;
		this.tr_rc_travel_destination = tr_rc_travel_destination;
	}

	public String getTr_area_english() {
		return tr_area_english;
	}

	public void setTr_area_english(String tr_area_english) {
		this.tr_area_english = tr_area_english;
	}

	public String getTr_area_korea() {
		return tr_area_korea;
	}

	public void setTr_area_korea(String tr_area_korea) {
		this.tr_area_korea = tr_area_korea;
	}

	public String getTr_area_content() {
		return tr_area_content;
	}

	public void setTr_area_content(String tr_area_content) {
		this.tr_area_content = tr_area_content;
	}

	public String getTr_area_image() {
		return tr_area_image;
	}

	public void setTr_area_image(String tr_area_image) {
		this.tr_area_image = tr_area_image;
	}

	public String getTr_rc_title() {
		return tr_rc_title;
	}

	public void setTr_rc_title(String tr_rc_title) {
		this.tr_rc_title = tr_rc_title;
	}

	public String getTr_rc_day() {
		return tr_rc_day;
	}

	public void setTr_rc_day(String tr_rc_day) {
		this.tr_rc_day = tr_rc_day;
	}

	public String getTr_rc_tag() {
		return tr_rc_tag;
	}

	public void setTr_rc_tag(String tr_rc_tag) {
		this.tr_rc_tag = tr_rc_tag;
	}

	public String getTr_rc_travel_destination() {
		return tr_rc_travel_destination;
	}

	public void setTr_rc_travel_destination(String tr_rc_travel_destination) {
		this.tr_rc_travel_destination = tr_rc_travel_destination;
	}

	@Override
	public String toString() {
		return "RecommendCourseDTO [tr_area_english=" + tr_area_english + ", tr_area_korea=" + tr_area_korea
				+ ", tr_area_content=" + tr_area_content + ", tr_area_image=" + tr_area_image + ", tr_rc_title="
				+ tr_rc_title + ", tr_rc_day=" + tr_rc_day + ", tr_rc_tag=" + tr_rc_tag + ", tr_rc_travel_destination="
				+ tr_rc_travel_destination + "]";
	}
}
