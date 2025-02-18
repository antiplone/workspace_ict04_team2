package com.spring.travel_planner.dto;

public class RecommendCourseDTO {
	
	
	private int tr_area_id;						// 지역 번호
	private String tr_area_english;				// 지역 영문
	private String tr_area_korea;				// 지역 한글
	private String tr_area_content;				// 지역 내용
	private String tr_area_image; 				// 지역 이미지
	private String tr_course_title;  			// 추천코스 제목
	private String tr_course_taketime;			// 추천코스 소요일
	private String tr_course_tag;  				// 추천코스 여행지 태그
	private String tr_course_map;  				// 추천코스 지도
	private int tr_Course_subId;				// 추천코스 서브번호
	private String tr_course_image;				// 추천코스 이미지	
	private String tr_course_travel;	        // 추천코스 여행지	
	private String tr_course_subname;		    // 추천코스 코스 서브명
	private String tr_course_subContent;		// 추천코스 코스 내용
	
	
	public RecommendCourseDTO() {}


	public RecommendCourseDTO(int tr_area_id, String tr_area_english, String tr_area_korea, String tr_area_content,
			String tr_area_image, String tr_course_title, String tr_course_taketime, String tr_course_tag,
			String tr_course_map, int tr_Course_subId, String tr_course_image, String tr_course_travel,
			String tr_course_subname, String tr_course_subContent) {
		super();
		this.tr_area_id = tr_area_id;
		this.tr_area_english = tr_area_english;
		this.tr_area_korea = tr_area_korea;
		this.tr_area_content = tr_area_content;
		this.tr_area_image = tr_area_image;
		this.tr_course_title = tr_course_title;
		this.tr_course_taketime = tr_course_taketime;
		this.tr_course_tag = tr_course_tag;
		this.tr_course_map = tr_course_map;
		this.tr_Course_subId = tr_Course_subId;
		this.tr_course_image = tr_course_image;
		this.tr_course_travel = tr_course_travel;
		this.tr_course_subname = tr_course_subname;
		this.tr_course_subContent = tr_course_subContent;
	}


	public int getTr_area_id() {
		return tr_area_id;
	}


	public void setTr_area_id(int tr_area_id) {
		this.tr_area_id = tr_area_id;
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


	public String getTr_course_title() {
		return tr_course_title;
	}


	public void setTr_course_title(String tr_course_title) {
		this.tr_course_title = tr_course_title;
	}


	public String getTr_course_taketime() {
		return tr_course_taketime;
	}


	public void setTr_course_taketime(String tr_course_taketime) {
		this.tr_course_taketime = tr_course_taketime;
	}


	public String getTr_course_tag() {
		return tr_course_tag;
	}


	public void setTr_course_tag(String tr_course_tag) {
		this.tr_course_tag = tr_course_tag;
	}


	public String getTr_course_map() {
		return tr_course_map;
	}


	public void setTr_course_map(String tr_course_map) {
		this.tr_course_map = tr_course_map;
	}


	public int getTr_Course_subId() {
		return tr_Course_subId;
	}


	public void setTr_Course_subId(int tr_Course_subId) {
		this.tr_Course_subId = tr_Course_subId;
	}


	public String getTr_course_image() {
		return tr_course_image;
	}


	public void setTr_course_image(String tr_course_image) {
		this.tr_course_image = tr_course_image;
	}


	public String getTr_course_travel() {
		return tr_course_travel;
	}


	public void setTr_course_travel(String tr_course_travel) {
		this.tr_course_travel = tr_course_travel;
	}


	public String getTr_course_subname() {
		return tr_course_subname;
	}


	public void setTr_course_subname(String tr_course_subname) {
		this.tr_course_subname = tr_course_subname;
	}


	public String getTr_course_subContent() {
		return tr_course_subContent;
	}


	public void setTr_course_subContent(String tr_course_subContent) {
		this.tr_course_subContent = tr_course_subContent;
	}


	@Override
	public String toString() {
		return "RecommendCourseDTO [tr_area_id=" + tr_area_id + ", tr_area_english=" + tr_area_english
				+ ", tr_area_korea=" + tr_area_korea + ", tr_area_content=" + tr_area_content + ", tr_area_image="
				+ tr_area_image + ", tr_course_title=" + tr_course_title + ", tr_course_taketime=" + tr_course_taketime
				+ ", tr_course_tag=" + tr_course_tag + ", tr_course_map=" + tr_course_map + ", tr_Course_subId="
				+ tr_Course_subId + ", tr_course_image=" + tr_course_image + ", tr_course_travel=" + tr_course_travel
				+ ", tr_course_subname=" + tr_course_subname + ", tr_course_subContent=" + tr_course_subContent + "]";
	}

}
