package com.spring.travel_planner.dto;

public class RecommendCourseDTO2 {
	/*
	 * private String m_email; // 샘플1 private String m_name; // 샘플2 private String
	 * m_password; // 샘플3
	 * 
	 * public RecommendCourseDTO2() { super(); }
	 * 
	 * public String getM_email() { return m_email; }
	 * 
	 * public void setM_email(String m_email) { this.m_email = m_email; }
	 * 
	 * public String getM_name() { return m_name; }
	 * 
	 * public void setM_name(String m_name) { this.m_name = m_name; }
	 * 
	 * public String getM_password() { return m_password; }
	 * 
	 * public void setM_password(String m_password) { this.m_password = m_password;
	 * }
	 * 
	 * public RecommendCourseDTO2(String m_email, String m_name, String m_password)
	 * { super(); this.m_email = m_email; this.m_name = m_name; this.m_password =
	 * m_password; }
	 * 
	 * @Override public String toString() { return "RecommendCourseDTO2 [m_email=" +
	 * m_email + ", m_name=" + m_name + ", m_password=" + m_password + "]"; }
	 */
	
	private int r_num;
	private String r_title;
	private String r_content;
	private String r_img;
	private String m_name;
	private int r_readcnt;
	private int r_comment_count;
	
	public RecommendCourseDTO2() {
		super();
	}
	
	public int getR_num() {
		return r_num;
	}
	public void setR_num(int r_num) {
		this.r_num = r_num;
	}
	public String getR_title() {
		return r_title;
	}
	public void setR_title(String r_title) {
		this.r_title = r_title;
	}
	public String getR_content() {
		return r_content;
	}
	public void setR_content(String r_content) {
		this.r_content = r_content;
	}
	public String getR_img() {
		return r_img;
	}
	public void setR_img(String r_img) {
		this.r_img = r_img;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public int getR_readcnt() {
		return r_readcnt;
	}
	public void setR_readcnt(int r_readcnt) {
		this.r_readcnt = r_readcnt;
	}
	public int getR_comment_count() {
		return r_comment_count;
	}
	public void setR_comment_count(int r_comment_count) {
		this.r_comment_count = r_comment_count;
	}
	
	public RecommendCourseDTO2(int r_num, String r_title, String r_content, String r_img, String m_name, int r_readcnt,
			int r_comment_count) {
		super();
		this.r_num = r_num;
		this.r_title = r_title;
		this.r_content = r_content;
		this.r_img = r_img;
		this.m_name = m_name;
		this.r_readcnt = r_readcnt;
		this.r_comment_count = r_comment_count;
	}

	@Override
	public String toString() {
		return "RecommendCourseDTO2 [r_num=" + r_num + ", r_title=" + r_title + ", r_content=" + r_content + ", r_img="
				+ r_img + ", m_name=" + m_name + ", r_readcnt=" + r_readcnt + ", r_comment_count=" + r_comment_count
				+ "]";
	}
	
}
