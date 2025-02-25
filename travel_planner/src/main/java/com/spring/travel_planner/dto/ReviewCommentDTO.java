package com.spring.travel_planner.dto;

import java.sql.Date;

import org.springframework.stereotype.Repository;

@Repository
public class ReviewCommentDTO {

	private int rc_comment_num;	// PK, 댓글 번호
	private int rc_num;					// FK, 리뷰 번호
	private String rc_name;		// FK, 회원
	private	String rc_comment;		// 댓글 내용
	private Date rc_regDate;			// 댓글 등록일
	
	public ReviewCommentDTO() {}

	public ReviewCommentDTO(int rc_comment_num, int rc_num, String rc_name, String rc_comment, Date rc_regDate) {
		super();
		this.rc_comment_num = rc_comment_num;
		this.rc_num = rc_num;
		this.rc_name = rc_name;
		this.rc_comment = rc_comment;
		this.rc_regDate = rc_regDate;
	}

	// getter, setter
	public int getRc_comment_num() {
		return rc_comment_num;
	}

	public void setRc_comment_num(int rc_comment_num) {
		this.rc_comment_num = rc_comment_num;
	}

	public int getRc_num() {
		return rc_num;
	}

	public void setRc_num(int rc_num) {
		this.rc_num = rc_num;
	}

	public String getRc_name() {
		return rc_name;
	}

	public void setRc_name(String rc_name) {
		this.rc_name = rc_name;
	}

	public String getRc_comment() {
		return rc_comment;
	}

	public void setRc_comment(String rc_comment) {
		this.rc_comment = rc_comment;
	}

	public Date getRc_regDate() {
		return rc_regDate;
	}

	public void setRc_regDate(Date rc_regDate) {
		this.rc_regDate = rc_regDate;
	}

	@Override
	public String toString() {
		return "ReviewCommentDTO [rc_comment_num=" + rc_comment_num + ", rc_num=" + rc_num + ", rc_name=" + rc_name
				+ ", rc_comment=" + rc_comment + ", rc_regDate=" + rc_regDate + "]";
	}
}
//CREATE TABLE travel_reviewComment_tbl(
//	    rc_comment_num	NUMBER(38)  	PRIMARY KEY,    -- 댓글 번호
//	    rc_name        VARCHAR2(38)    NOT NULL,   	-- 댓글 작성자
//	    rc_comment      CLOB    		NOT NULL,       -- 댓글 내용
//	    rc_regDate      DATE    		DEFAULT sysdate,-- 댓글 등록일
//	    rc_num           NUMBER(38),      				-- 리뷰글 번호
//		FOREIGN KEY(rc_num) REFERENCES travel_review_tbl(r_num),
//		FOREIGN KEY(rc_name) REFERENCES travel_member_tbl(m_name)
//	);