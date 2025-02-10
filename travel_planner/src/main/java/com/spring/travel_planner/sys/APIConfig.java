package com.spring.travel_planner.sys;

import java.util.HashMap;
import java.util.Map;

public final class APIConfig {
	public static String TOUR_API_KOR_KEY = "?ServiceKey=vQkOIwgxBt6hPrd9oi4ilRgPxTnXhFRqIz7ouD4HcxfgOEeCxXczaQREqB%2BjK4xU5q2kdCMqR1HxfC4woJd9Yg%3D%3D";


	public enum TourAPI {
//		KOR_SERVICE("http://apis.data.go.kr/B551011/KorService1"),
		한국어("http://apis.data.go.kr/B551011/KorService1"),
		영어("http://apis.data.go.kr/B551011/EngService1");

		public final String label;
		private TourAPI(String label) {
			this.label = label;
		}

		@Override
		public String toString() {
			return this.label;
		}

		public static Object valueOfLabel(String label) {
			if (label.contains("/")) {
				String[] url = label.split("/");
				String result = "";

				for (TourAPI e : values()) {

					if (e.name().equals(url[0])) {
						result += e.label;
						break;
					}
				}

				for (Operation e : Operation.values()) {
					if (e.name().equals(url[1])) {
						result += e.label;
						return result + TOUR_API_KOR_KEY;
					}
				}
			}
			else {
				for (TourAPI e : values()) {
					if (e.name().equals(label)) {
						return e.label + TOUR_API_KOR_KEY;
					}
				}
			}
			return null;
		}

		public enum Type {
			// 국문관광타입
			관광지("12"),
			문화시설("14"),
			축제공연행사("15"),
			여행코스("25"),
			레포츠("28"),
			숙박("32"),
			쇼핑("38"),
			음식점("39");

			public final String label;
			private Type(String label) {
				this.label = label;
			}
			
			@Override
			public String toString() {
				return this.label;
			}
			
			public static Type valueOfLabel(String label) {
				for (Type e : values()) {
					if (e.name().equals(label)) {
						return e;
					}
				}
				return null;
			}
		}

		public enum Operation {
			서비스분류코드조회("/categoryCode1"),
			지역코드조회("/areaCode1"),
			공통정보("/detailCommon1"),
			소개정보("/detailIntro1"),
			지역기반관광정보("/areaBasedList1");

			public final String label;
			private Operation(String label) {
				this.label = label;
			}

			@Override
			public String toString() {
				return this.label;
			}

			public static Operation valueOfLabel(String label) {
				for (Operation e : values()) {
					if (e.name().equals(label)) {
						return e;
					}
				}
				return null;
			}
		}

		public static Map<String, Object> mapDetailCommon1() {
			return new HashMap<String, Object>() {/**
				 * 
				 */
				private static final long serialVersionUID = 1L;
				{
					put("contentTypeId", "-1");
					put("contentId", -1);
					put("MobileOS", "ETC");
					put("MobileApp", "AppTest");
					put("defaultYN", "Y");
					put("firstImageYN", "Y");
					put("areacodeYN", "Y");
					put("catcodeYN", "Y");
					put("addrinfoYN", "Y");
					put("mapinfoYN", "Y");
					put("overviewYN", "Y");
					put("_type", "json");
				}
			};
		}

		public static Map<String, Object> mapAreaBasedList1() {
			return new HashMap<String, Object>() {/**
				 * 
				 */
				private static final long serialVersionUID = 1L;
				{ // listYN=Y&arrange=A&areaCode=32&_type=json&numOfRows=10&pageNo=1
					put("MobileOS", "ETC");
					put("MobileApp", "AppTest");
					put("listYN", "Y");
					put("arrange", "A");
					put("areaCode", 32);
					put("numOfRows", 10);
					put("pageNo", 1);
					put("_type", "json");
				}
			};
		}
	}
}
