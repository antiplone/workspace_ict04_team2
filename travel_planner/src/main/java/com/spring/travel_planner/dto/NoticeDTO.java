package com.spring.travel_planner.dto;

import java.sql.Date;

public class NoticeDTO {
	
	public int notice_num;
	
	private String notice_title;
	
	private String notice_content;
	
	private String notice_writer;
	
	private String notice_password;
	
	private int notice_readCnt;
	
	private Date notice_regDate;
	
	private String notice_show;

	public NoticeDTO() {}
	
	public NoticeDTO(int notice_num, String notice_title, String notice_content, String notice_writer,
			String notice_password, int notice_readCnt, Date notice_regDate, String notice_show) {
		super();
		this.notice_num = notice_num;
		this.notice_title = notice_title;
		this.notice_content = notice_content;
		this.notice_writer = notice_writer;
		this.notice_password = notice_password;
		this.notice_readCnt = notice_readCnt;
		this.notice_regDate = notice_regDate;
		this.notice_show = notice_show;
	}

	public String getNoticeTitle() {
		return notice_title;
	}

	public void setNoticeTitle(String notice_title) {
		this.notice_title = notice_title;
	}

	public int getNoticeNum() {
		return notice_num;
	}

	public void setNoticeNum(int notice_num) {
		this.notice_num = notice_num;
	}

	public String getNoticeContent() {
		return notice_content;
	}

	public void setNoticeContent(String notice_content) {
		this.notice_content = notice_content;
	}

	public String getNoticeWriter() {
		return notice_writer;
	}

	public void setNoticeWriter(String notice_writer) {
		this.notice_writer = notice_writer;
	}

	public String getNoticePassword() {
		return notice_password;
	}

	public void setNoticePassword(String notice_password) {
		this.notice_password = notice_password;
	}

	public int getnoticeReadCnt() {
		return notice_readCnt;
	}

	public void setNoticereadCnt(int notice_readCnt) {
		this.notice_readCnt = notice_readCnt;
	}

	public Date getNoticeRegDate() {
		return notice_regDate;
	}

	public void setNoticeRegDate(Date notice_regDate) {
		this.notice_regDate = notice_regDate;
	}

	public String getNoticeShow() {
		return notice_show;
	}

	public void setNoticeShow(String notice_show) {
		this.notice_show = notice_show;
	}

	@Override
	public String toString() {
		return "NoticeDTO [noticeTitle=" + notice_title + ", noticeNum=" + notice_num + ", noticeContent=" + notice_content
				+ ", noticeWriter=" + notice_writer + ", noticePassword=" + notice_password + ", notice_readCnt="
				+ notice_readCnt + ", noticeRegDate=" + notice_regDate + ", noticeShow=" + notice_show + "]";
	}
	
}
