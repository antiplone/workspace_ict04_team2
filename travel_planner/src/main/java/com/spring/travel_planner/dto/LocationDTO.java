package com.spring.travel_planner.dto;

public class LocationDTO {
	
	
	public LocationDTO() {}
	
	private String detail_imgUrl;
	private String detail_url;
	private String detail_name;
	private String detail_location;
	
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
	
	@Override
	public String toString() {
		return "LocationDTO [detail_imgUrl=" + detail_imgUrl + ", detail_url=" + detail_url + ", detail_name="
				+ detail_name + ", detail_location=" + detail_location + "]";
	}

}
