package com.spring.travel_planner.dto;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class ReviewDTO {
	
	// 멤버변수
	private int r_num;				// PK, 리뷰 번호
	private String r_title;			// 리뷰 제목
	private String r_content;		// 리뷰 내용
	private String r_img;				// 리뷰 이미지
	private String m_name;		// FK, 리뷰 작성자
	private int r_readCnt;			// 리뷰 조회순
	private Date r_regDate;			// 리뷰 등록일
	private String r_comment;		// 리뷰 댓글 개수
	
	public ReviewDTO() {}

	// 매개변수 생성자
	public ReviewDTO(int r_num, String r_title, String r_content, String r_img, int r_readCnt, Date r_regDate,
			String m_name, String r_comment) {
		super();
		this.r_num = r_num;
		this.r_title = r_title;
		this.r_content = r_content;
		this.r_img = r_img;
		this.r_readCnt = r_readCnt;
		this.r_regDate = r_regDate;
		this.m_name = m_name;
		this.r_comment = r_comment;
	}

	// getter, setter
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

	public int getR_readCnt() {
		return r_readCnt;
	}

	public void setR_readCnt(int r_readCnt) {
		this.r_readCnt = r_readCnt;
	}

	public Date getR_regDate() {
		return r_regDate;
	}

	public void setR_regDate(Date r_regDate) {
		this.r_regDate = r_regDate;
	}

	public String getM_name() {
		return m_name;
	}

	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	public String getR_comment() {
		return r_comment;
	}

	public void setR_comment(String r_comment) {
		this.r_comment = r_comment;
	}

	// toString
	@Override
	public String toString() {
		return "ReviewDTO [r_num=" + r_num + ", r_title=" + r_title + ", r_content=" + r_content + ", r_img=" + r_img
				+ ", r_readCnt=" + r_readCnt + ", r_regDate=" + r_regDate + ", m_name=" + m_name
				+ ", r_comment=" + r_comment + "]";
	}
}
//CREATE TABLE travle_review_tbl(
//	    r_num       NUMBER(38)  PRIMARY KEY,    -- 리뷰글 번호
//	    r_title     VARCHAR2(200)   NOT NULL,   -- 리뷰글 제목
//	    r_content   CLOB 			NOT NULL,   -- 리뷰 내용
//	    r_img       VARCHAR2(100)   NOT NULL,   -- 리뷰 이미지
//	    r_readCnt   NUMBER(6)   DEFAULT 0,      -- 조회수
//	    r_regDate   DATE    	DEFAULT sysdate,    -- 리뷰 등록일
//	    r_comment 	VARCHAR2(200),  			-- 댓글 내용
//	--    r_comment_count NUMBER(6)   DEFAULT 0,  -- 댓글 개수
//	--    r_tourinfo NUMBER(20),
//	--    r_tags  VARCHAR2(4000),
//		m_name	VARCHAR2(38)	NOT NULL		-- 회원 이름
//	--    CONSTRAINT m_name FOREIGN KEY(m_name) REFERENCES travel_member_tbl(m_name)    
//	);