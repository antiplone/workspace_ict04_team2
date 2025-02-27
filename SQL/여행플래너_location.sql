-- *** 여행지 지역 테이블
DROP TABLE travel_tourcity_tbl  CASCADE CONSTRAINTS;

CREATE TABLE travel_tourcity_tbl(
	tc_num		   NUMBER(38)     PRIMARY KEY,	 -- 지역 번호 pk
	tc_area    	   VARCHAR2(50), 				 -- 지역(시)
	tc_gu    	   VARCHAR2(50), 				 -- 지역(구)
	tc_si_num	   NUMBER(38),					 -- 시 번호
	tc_gu_num	   NUMBER(38)  				 	 -- 구 번호
);

SELECT DISTINCT tc_area, tc_si_num  FROM travel_tourcity_tbl
ORDER BY tc_si_num;

COMMIT;

SELECT i.*, c.*
      FROM travel_tourInfo_tbl i, travel_tourcity_tbl c
     WHERE i.tc_num = c.tc_num
	 AND i.ti_location LIKE '%제주%'
     ORDER BY i.ti_num DESC;

-- *** 여행지 정보 테이블
DROP TABLE travel_tourInfo_tbl  CASCADE CONSTRAINTS;

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

SELECT *
	  FROM
		  (SELECT A.*,
			      rownum AS rn
		     FROM
				 (SELECT * FROM travel_tourInfo_tbl 
				  WHERE ti_location IN ('서울 용산구', '서울 마포구')
				  ORDER BY ti_num DESC) A
		   )
	WHERE rn >= 1
	  AND rn <= 12;

SELECT *
  	  FROM travel_tourInfo_tbl
	 WHERE ti_location IN ('서울 용산구', '서울 마포구');
	 
	 
SELECT COUNT(*) AS cnt
  FROM travel_tourInfo_tbl
 WHERE ti_location IN ('서울 용산구');


SELECT * FROM travel_tourInfo_tbl;

COMMIT;


INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, ti_thema, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES (1, '한국어', '역사', 146, '충남 공주시', '마곡사 [유네스코 세계유산]', '전쟁의 위험도 피해간 천년고찰', 
'공주 마곡사는 신라 선덕여왕 9년(640) 자장(慈藏)이 창건한 사찰이다. 마곡사라는 이름은 신라의 보철화상이 설법전도할 때 모인 신도가 삼밭의 삼대 같다고 하여 지은 것이라 한다. 창건 당시에는 30여 칸의 대사찰이었으나 현재는 대웅보전, 대광보전, 영산전, 사천왕문, 해탈문 등이 남아있다. 그 외 오층석탑, 괘불 1폭, 목패, 조선 세조가 탔던 연, 청동향로, 고서적들이 있다. 고려 후기 불교문화의 대표적 유산인 금물과 은물로 베껴 쓴 필사 불경도 여러 점 전해진다. 마곡사 일대는 조선조 십승지지, 즉 전란기에 위험을 피할 수 있는 특별한 지역 중 하나로 알려져 있다. 이중환의 [택리지]에 따르면 마곡사는 임진왜란의 전란을 피하였으며, 6.25전쟁 때도 병화를 입지 않고 살아남았다. 이러한 가치를 인정받아 유네스코 세계유산 산사, 한국의 산지승원으로 선정되었으며 사찰 내 여러 문화재가 충청남도 유형문화재와 문화재자료로 지정되었다.',
								'041-841-6220~3', 'http://www.magoksa.or.kr', '충청남도 공주시 사곡면 마곡사로 966', '일출~일몰', '연중무휴',
								'가능(소형 100대)', '장애인 전용 주차구역 있음_무장애 편의시설', '입장료 무료 / 체험료 별도',
								 'location_detailAction.lc', '마곡사1.jpg', '마곡사2.jpeg');

INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES (2, '한국어', 245, '강원 양양군', '양양 하조대 스카이워크', '아름다운 동해 바다를 조망할 수 있는 곳', 
'양양 하조대 스카이워크는 하조대해변을 배경으로 인생샷을 남길 수 있는 사진 명소다. 투명한 유리 바닥 아래로는 깎아지른 듯 웅장한 절벽과 짙푸른 바다가 훤히 내려다보여 아찔함을 선사한다. 하지만 길이가 짧은 편이라 남녀노소 누구든 부담 없이 오를 만하다. 스카이워크는 하조대해변을 따라 조성된 해안 산책로와 연결된다. 동해의 투명한 물빛과 우거진 소나무숲을 함께 즐길 수 있는 산책코스다. 둘레길을 따라 느긋하게 걷다 보면 양양을 대표하는 명승지인 하조대를 만날 수 있다. 옥빛 바다와 기암절벽, 그 위에 우뚝 솟은 노송이 한 폭의 동양화처럼 어우러진다. 특히 정자에 올라 바라보는 풍광이 눈과 마음을 사로잡을 만하다. 하조대에서 울창한 소나무가 줄지어 있는 구름다리를 건너면 동심을 자극하는 하얀 등대가 운치를 더한다.',
								'033-670-2516', 'https://tour.yangyang.go.kr/', '강원특별자치도 양양군 현북면 하륜길 54', '	06:00~20:00', '연중무휴',
								'가능', '정보없음', '무료',
								 'location_detailAction.lc', '양양하조대스카이워크1.jpg', '양양하조대스카이워크2.jpg');

INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES (3, '한국어', 15, '서울 용산구', '남산서울타워', '대를 이어온 데이트의 추억', 
'남산서울타워는 효율적인 방송전파 송수신과 한국의 전통미를 살린 관광 전망시설의 기능을 겸비한 국내 최초의 종합전파탑으로 방송문화와 관광산업의 미래를 위해 건립되었다. 세계 유명한 종합 탑들이 그 나라 또는 그 도시의 상징적인 존재가 된 것처럼 ‘남산서울타워’ 역시 지난 40여 년간 대한민국의 대표적인 관광지이자 서울의 상징물 역할을 해왔다. 남산서울타워는 서울 시내 전 지역에서 바라보이는 탑의 높이와 독특한 구조, 형태 등으로 인하여 시민의 관심과 사랑의 대상이 되었고, 내외국인들이 즐겨 찾는 제1의 관광 명소로서의 위치를 확고히 하고 있다. 최근에는 한류 바람을 몰고 온 각종 예능, 드라마의 촬영지로 이름이 높아지면서 내외국인 관광객들이 발길이 끊이지 않는 곳이다.

◎ 한류의 매력을 만나는 여행 정보
TXT 자체 콘텐츠 에서 막내 휴닝카이와 태현이 교복 나들이를 즐긴 장소다. 두 사람은 케이블카를 타고 정상에 올라 함께 사진을 찍고, 소원 자물쇠를 채우며 시간을 보냈다. 자물쇠는 케이블카 상류 정류장에 위치한 기념품점에서 구매할 수 있고, 소원을 적을 때 쓰는 네임펜도 대여 가능하다.',
								'02-3455-9277', '	http://www.seoultower.co.kr', '	서울특별시 용산구 남산공원길 105', '주중 10:30~22:30(매표마감 21:30) / 주말 10:00~23:00(매표마감 22:30)', '연중무휴',
								'가능 (남산동 공영주차장 / 남산케이블카 주차장 / 남산공원 주차장 / 국립극장 주차장)', '	장애인 주차장 있음_무장애 편의시설(장애인등록 차량의 경우, 남산서울타워 주차장까지 차량이동 가능)',
								'[전망대]
									- 대인 21,000원
									- 소인 16,000원',
								 'location_detailAction.lc', '남산서울타워1.jpg', '남산서울타워2.jpg');

INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES (4, '한국어', 16, '서울 은평구', '은평한옥마을', '북한산의 아름다운 자연환경과 현대식 한옥이 어우러진 명소', 
'은평 한옥마을은 북촌, 서촌에 이은 새롭게 만들어지고 있는 한옥 단지이다. 여유로움과 도심 속 전원을 한껏 느낄 수 있다. 국립공원 북한산, 그리고 진관사와 어우러진 역사 문화 마을이다. 은평한옥단지는 개인에게 한옥만을 지을 수 있게 토지를 분양해서 소유주의 취향에 따라 각 한옥마다 모양과 나무색이 달라 보는 즐거움이 있다. 상업시설을 제외한 곳은 대부분 개인의 사유지이기에 내부 관람은 불가하나 소유주의 허락이 있다면 관람이 가능하다. 또한, 산책로와 편의점, 카페 등 편의시설을 갖추고 있어 나들이를 즐기기에 적당하다.',
								'02-351-6114', 'https://https://eptour.kr', '서울특별시 은평구 진관동 127-27', '상시 개방', '연중무휴',
								'가능', '지상에 장애인 주차장 5면 출입구까지 경사로 없이 접근 가능',
								'※ 객실요금과 문의는 각 업체마다 다르므로 홈페이지 참조 요망',
								 'location_detailAction.lc', '은평한옥마을1.jpg', '은평한옥마을2.jpg');

INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES ((SELECT NVL(MAX(ti_num)+1, 1) FROM travel_tourInfo_tbl), '한국어', 128, '강원 삼척시', '대금굴 (대이리 동굴지대)', '5억 3천만 년 동안 외부와 단절되어 있던 찬란한 자태', 
'강원도 삼척시 대이리 동굴 지대에 위치한 대금굴은 인근에 있는 환선굴, 관음굴과 비슷한 시기에 형성된 동굴로 동굴 발견까지 4년, 시설물 설치 3년, 총 7년의 준비 기간 끝에 일반에 개방하였다. 동굴 내부에는 종유석, 석순, 석주 등 동굴 생성물이 잘 발달되어 있으며, 특히 지하에는 근원지를 알 수 없는 많은 양의 동굴수가 흘러 여러 개의 크고 작은 폭포와 동굴 호수가 형성되어 있는 것이 특징이다. 이곳의 지형은 약5억 3천만 년 전 캠부리아기에서 오르도비스기에 이르는 하부 고생대의 퇴적암류인 조선누층군의 풍 촌층과 대기층의 암석이 분포하고 있는 지역으로서 열대 심해의 바다속에 퇴적된 산호초 등의 지형이 지각변동으로 인하여 현재의 위치에 이르게 되었고 오랜 세월 침식되어 동굴이 형성되었다. 현재 대금굴은 모노레일로만 접근이 가능하며, 최소 방문 하루 전에 온라인 예매를 해야 입장이 가능하다.',
								'033-541-7600', 'http://daegeumgul.co.kr/dgg', '강원특별자치도 삼척시 신기면 환선로 800', 
								'하절기(3월~10월) 09:00~17:00 / 동절기(11월~2월) 09:30~16:00 ※ 당일 예약 불가', '매월 18일 ※ 단, 18일이 공휴일인 경우 그 다음 평일 휴관',
								'가능', '장애인 전용주차장 있음_무장애 편의시설',
								'- 어른 : 개인 12,000원 / 단체 10,000원
									- 청소년·경로 : 개인 9,000원 / 단체 8,000원
									- 어린이·군인 : 개인 6,000원 / 단체 5,000원
									- 장애인·삼척시민·폐광지역주민 : 6,000원
									- 국가유공자·관내초등학생 : 3,000원
									※ 어린이 : 7세 이상~12세 이하
									※ 청소년 : 13세 이상~18세 이하
									※ 군인 : 병장 이하의 병, 의무경찰, 사회복무요원, 상근예비역
									※ 어른 : 19세 이상~64세 이하
									※ 경로 : 65세 이상
									※ 단체 : 어린이, 어른 등 30인 이상 동시 입장(감면대상자 제외)
									※ 모든 우대 혜택은 확인할 수 있는 서류 등이 필요함',
								 'location_detailAction.lc', '대금굴1.jpg', '대금굴2.jpg');

INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES ((SELECT NVL(MAX(ti_num)+1, 1) FROM travel_tourInfo_tbl), '한국어', 222, '전남 여수시', '여수예술랜드', '보이는 곳마다 감탄을 자아내는 예술랜드', 
'환상적인 바다 전망의 다양한 객실과 예술적 감성에서 익사이팅한 즐길거리까지, 특별함 경험을 제공하는 토탈 숙박 리조트 여수예술랜드이다. 국내 최대 테마형 3D 트릭아트와 60m 미디어 터널이 있는 3D뮤지엄, 150m 암반터널을 통해 만나는 조각공원풍경 등 다양한 예술공간이 있으며, 특히 바다를 향해 뻗어있는 ‘마이다스의 손’은 온라인에서 꼭 찍어야 하는 대한민국의 포토 위시리스트로 선정되어 관광객들의 발길이 끊이지 않고 있다. 이외에도 짜릿한 스릴을 만끽하는 카트체험과 짚코스터, 스윙 등의 액티비티도 있다.

◎ 한류의 매력을 만나는 여행 정보
아이즈원 멤버들이 다양한 미션을 진행하고 바비큐까지 알차게 즐긴 장소다. <아이즈원의 잇힝 트립2>의 대부분이 촬영된 만큼, 멤버들이 미션을 수행하던 장면을 떠올리며 구경하는 재미가 쏠쏠하다.',
								'061-665-0000', 'http://www.alr.co.kr/', '전라남도 여수시 돌산읍 무술목길 142-1', 
								'	- 카트체험 09:30~17:30 (평일 휴게시간 11:30~12:10)
- 짚코스터 09:30~17:30 (평일 휴게시간 11:30~12:10)
- 3D뮤지엄 소설 09:00~18:00
- 전망대 마이다스의 손 09:00~마감까지
- 스윙 09:00~17:30
- 오션 스카이워크 10:00~17:00
※ 모든 체험시설은 날씨와 대기인원에 따라 마감시간 변동 가능', '	연중무휴',
								'가능', '정보없음',
								'	[트릭아트 / 미디어아트 / 짚코스터(편도)]
									- 대인 15,000원
									- 소인 10,000원
									[카트체험]
									- 2LAP 15,000원
									- 3LAP 20,000원
									[공중그네] 5,000원
									[스카이워크] 8,000원
									※ 숙박고객 할인 등 자세한 사항은 홈페이지 참조',
								 'location_detailAction.lc', '여수예술랜드.jpg', '여수예술랜드2.jpg');

INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES ((SELECT NVL(MAX(ti_num)+1, 1) FROM travel_tourInfo_tbl), '한국어', 147, '충남 예산군', '아그로랜드 태신목장', '자연 속에서 다양한 체험을 즐길 수 있는 목장', 
'아그로랜드 태신목장은 한국 낙농업의 태동기라 할 수 있는 1968년에 설립되었으며 1978년, 오늘날의 위치로 이전해 왔다. 2004년부터는 국내 최초로 ‘낙농 체험 목장’을 운영하기 시작하였고 목장을 개방해 각종 가축이 있는 목장을 체험할 수 있게 되었다. 푸른 초원에서 느낄 수 있는 목가적인 풍경과 자연 속에서 소와 함께하는 체험의 장을 제공한다. 시설은 목장 체험장, 승마 체험장, 조각공원, 야생화정원, 초지 체험장, 생태연못과 산책길, 동물농장, 사랑앵무새장, 한우 방목지, 측백나무 미로, 스낵바 등 다양하게 갖춰져 있다. 체험 프로그램은 트랙터 열차 타기, 소젖 짜기, 목장 체험, 승마 체험, 아이스크림 만들기가 운영되고 있다. 주변에는 면천읍성, 면천향교, 면천저수지, 합덕제 수변공원, 합덕수리민속박물관 등이 있다.',
								'041-356-3154', 'http://www.agroland.co.kr/', '충청남도 예산군 고덕면 상몽2길 231', 
								'	[하절기 (3월~10월)]
									- 10:00~18:30
									[동절기 (11월~2월)]
									- 10:00~17:00', '설· 추석 당일',
								'	가능 (소형 150대)', '정보없음',
								'	- 대인 10,000원
									- 소인 7,000원',
								 'location_detailAction.lc', '아그로랜드1.jpg', '아그로랜드2.jpg');

INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES ((SELECT NVL(MAX(ti_num)+1, 1) FROM travel_tourInfo_tbl), '한국어', 15, '서울 용산구', '국립한글박물관', '우리 민족 최고의 문화유산인 한글의 문자적 · 문화적 가치를 창출하고 널리 알릴 수 있는 국립한글박물관', 
'국립한글박물관은 한글과 한글문화 가치의 보존, 확산, 재창조를 위해 설립된 공간이다. 한글 문화를 활용한 전시, 교육, 문화행사를 개최하고 한글, 문자, 글꼴 등을 연구, 조사하여 한글의 가치를 발굴하고 그 우수성을 널리 알리기 위해 노력하고 있다. 한국의 대표적 문화유산인 한글의 역사와 가치를 일깨우는 전시와 체험, 배움의 기회를 제공하는 박물관이다. 건축 연면적 1만 1,322㎡로 지하 1층 및 지상 3층 건물과 문화행사·전시·교육 등이 가능한 야외 잔디마당과 쉼터를 갖추고 있다. 1층에는 한글도서관이 마련되었으며, 2층에는 상설전시실과 카페, 문화상품점, 3층에는 기획전시실, 어린이를 위한 한글놀이터, 외국인을 위한 한글배움터 등으로 구성되어 있다.',
								'국립한글박물관 02-2124-6200', '국립한글박물관 http://www.hangeul.go.kr', '서울특별시 용산구 서빙고로 139 (용산동6가)', 
								'월~금, 일요일 10:00~18:00 / 토요일 10:00~ 21:00<0br > ※ 온라인 사전 예약제로 운영',
								'새해 첫날(1.1), 설날 당일, 추석 당일 / 한글도서관 : 법정 공휴일(한글날 제외)',
								'가능(국립한글박물관 건물 지하 1층/70여 대)', '	장애인 주차장 있음(3대,지하주차장,장애인표지판)_무장애 편의시설',
								'무료',
								 'location_detailAction.lc', '국립한글박물관1.jpg', '국립한글박물관2.jpg');
-- 여행지 / 게시글 다건 등록
DECLARE 
	i NUMBER := 9;
BEGIN
	WHILE i<=30 LOOP
		INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
		VALUES ((SELECT NVL(MAX(ti_num)+1, 1) FROM travel_tourInfo_tbl), '한국어', 15, '서울 용산구', '국립한글박물관'||i, '우리 민족 최고의 문화유산인 한글의 문자적 · 문화적 가치를 창출하고 널리 알릴 수 있는 국립한글박물관', 
'국립한글박물관은 한글과 한글문화 가치의 보존, 확산, 재창조를 위해 설립된 공간이다. 한글 문화를 활용한 전시, 교육, 문화행사를 개최하고 한글, 문자, 글꼴 등을 연구, 조사하여 한글의 가치를 발굴하고 그 우수성을 널리 알리기 위해 노력하고 있다. 한국의 대표적 문화유산인 한글의 역사와 가치를 일깨우는 전시와 체험, 배움의 기회를 제공하는 박물관이다. 건축 연면적 1만 1,322㎡로 지하 1층 및 지상 3층 건물과 문화행사·전시·교육 등이 가능한 야외 잔디마당과 쉼터를 갖추고 있다. 1층에는 한글도서관이 마련되었으며, 2층에는 상설전시실과 카페, 문화상품점, 3층에는 기획전시실, 어린이를 위한 한글놀이터, 외국인을 위한 한글배움터 등으로 구성되어 있다.',
								'국립한글박물관 02-2124-6200', '국립한글박물관 http://www.hangeul.go.kr', '서울특별시 용산구 서빙고로 139 (용산동6가)', 
								'월~금, 일요일 10:00~18:00 / 토요일 10:00~ 21:00<0br > ※ 온라인 사전 예약제로 운영',
								'새해 첫날(1.1), 설날 당일, 추석 당일 / 한글도서관 : 법정 공휴일(한글날 제외)',
								'가능(국립한글박물관 건물 지하 1층/70여 대)', '	장애인 주차장 있음(3대,지하주차장,장애인표지판)_무장애 편의시설',
								'무료',
								 'location_detailAction.lc', '국립한글박물관1.jpg', '국립한글박물관2.jpg');
		i := i+1;
	END LOOP;
END;
/

INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES ((SELECT NVL(MAX(ti_num)+1, 1) FROM travel_tourInfo_tbl), '한국어', 157, '충남 부여군', '서동공원과 궁남지', '백제의 역사와 자연을 느껴볼 수 있는 인공 조경', 
'궁남지는 백제시대의 연못으로, 삼국사기에 의해 백제 무왕이 궁궐 남쪽에 만들어 궁남지라고 불린다. 삼국유사에는 무왕의 어머니가 궁남지의 용과 정을 통하여 무왕을 낳았다고 기록되어 있다. 현재 연못 주변에는 우물과 주춧돌들이 남아있는데, 이는 우리나라에서 가장 오래된 인공 조경으로 백제의 조경 기술 수준을 엿볼 수 있다.
못 가운데 섬을 만들어 신선사상을 표현한 궁남지는 우리나라 최고(最古)의 인공정원으로 백제의 노자공은 일본에 건너가 백제의 정원 조경기술을 전해주었다고 한다. 백제가 삼국 중에서도 정원을 꾸미는 기술이 뛰어났음을 알 수 있다. 사계절이 아름다운 관광지이다.
현재 궁남지는 자연과 인간의 공존하는 이상적인 친환경 여행지로 발전했는데, 자연환경 보존을 위해 적극적인 관리가 진행되고 있다. 덕분에 관광 시에는 역사와 자연을 동시에 경험할 수 있는 체험을 선사하고 있는데, 자전거와 도보를 통해 더욱 친환경적인 관광이 가능하다. 또한, 유적지를 둘러보며 관광지에 있는 역사적 가치를 더욱 심도 있게 이해할 수 있다.
7월에는 천만 송이 연꽃들의 아름다운 향연인 서동연꽃축제가 열리고, 10~11월에는 다양한 작품으로 꾸며진 굿뜨래 국화전시회가 열려 궁남지의 아름다움을 더해준다.',
								'충남종합관광안내소 041-830-2880', '	https://www.buyeo.go.kr/html/tour/', '	충청남도 부여군 부여읍 궁남로 52', 
								'상시 개방', '연중무휴',
								'가능', '장애인 주차장 있음(3대)_무장애 편의시설',
								'무료',
								 'location_detailAction.lc', '서동공원과궁남지1.jpg', '서동공원과궁남지2.jpg');

INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES ((SELECT NVL(MAX(ti_num)+1, 1) FROM travel_tourInfo_tbl), '한국어', 18, '서울 중구', '신세계백화점 본점', '쇼핑 공간을 넘어 휴식과 감동을 제공하는 문화 공간', 
'신세계백화점은 1960년대 초반 근대 백화점의 개념을 처음 도입하고 최초의 직영 체제를 확립했다. 신세계백화점 명동본점은 신세계의 전통과 가치를 대변하는 상징적인 장소이다. 국내 최초의 백화점 미쓰코시 경성지점이 있던 자리로 고풍스러운 옛 건축물에서 긴 역사가 느껴진다. 지난 2007년 리모델링 공사를 거쳐 현재는 문화 공간을 표방한 명품관으로 자리하고 있다.
새로 개관한 본점은 세계 3대 명품인 에르메스, 샤넬, 루이뷔통을 비롯해 신세계가 단독으로 선보이는 조르지오 아르마니 블랙라벨, 데님마니아, 슈즈홀릭 등 쇼핑의 품격을 높이는 브랜드를 만나볼 수 있는 공간이며 차별화된 쇼핑 서비스를 위해 5층에는 편집 매장 분더숍, 컴퍼니를 운영한다. 우리나라 편집 매장으로는 원조라 할 수 있는 분더숍을 젊은 브랜드와 신진 디자이너의 제품으로 업그레이드했다.
본점은 쇼핑과 문화가 어우러진 공간을 제공하고 있다. 6층 트리니티 가든은 세계적 거장들의 예술 작품이 전시된 조각 공원으로 유명하다. 알렉산더 칼더, 호안 미로, 영국 조각의 아버지 헨리 무어 등 유명 작가들의 작품이 전시돼 있다. 조각품들 사이로는 물이 흐르고 곳곳에 벤치가 놓여 있어 쇼핑 후 예술 작품을 감상하며 휴식을 취할 수 있다. 전통과 현대의 미학이 조화를 이룬 작품들을 통해 쇼핑 공간을 넘어 휴식과 감동을 제공하는 문화 공간이 되고자 노력하고 있다.',
								'1588-1234', 'https://www.shinsegae.com/index.do', '서울특별시 중구 소공로 63', 
								'월~목 10:30~20:00 / 금~일 10:30~20:00', '매월 넷째주 월요일 / 명절 당일',
								'주차가능(1,500대)', '	장애인 전용 주차구역 있음_무장애 편의시설',
								'없음',
								 'location_detailAction.lc', '신세계백화점본점1.jpg', '신세계백화점본점2.jpg');

INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES ((SELECT NVL(MAX(ti_num)+1, 1) FROM travel_tourInfo_tbl), '한국어', 6, '서울 마포구', '난지한강공원', '캠핑과 바비큐를 즐길 수 있는 도심 속 휴식 공간', 
'난지한강공원은 수변공간으로서의 공원 기능은 물론 여가·레저 및 습지생태공원 기능을 골고루 갖추고 있는 공원이다. 공원의 상류부는 수변 활동 구역으로 캠핑장, 선착장, 수변 광장으로 조성하고, 중류부는 완충 녹지 지역으로 다목적 초지광장, 잔디마당, 하류부는 기존 수목을 이용하여 습지생태공원을 이루고 있다. 홍제천교에서 난지천교 사이에 있는 난지한강공원은 길이 4.02㎞(약 776,000㎡)로 마포구 상암동에 있다. 한강르네상스 사업으로 새롭게 조성된 난지한강공원은 노을공원, 하늘공원과 연결되는 중앙연결브릿지, 평화의 공원 연결브릿지, 복합연결통로가 완공되어 공원 이용 시민들의 접근성과 편리성을 더하고 있다. 평화의 공원 연결브릿지 앞에 설치된 거울분수는 난지한강공원의 랜드마크로, 물을 뿜을 때마다 아름다운 풍경을 연출하여 일곱빛깔무지개처럼 다양한 볼거리와 즐길 거리를 제공하고 있으며, 여름철 이용할 수 있는 강변물놀이장은 과거 강변에서 물놀이하던 추억을 되살리는 공간으로 어린아이를 동반한 온 가족이 함께 즐길 수 있도록 조성되어 있다. 또한 생태습지원에 보행연결브릿지가 설치되어 자연생태의 초지 및 식물군락 등 수변에 서식하는 동물을 관찰할 수 있으며, 주변에 야생탐사센터, 수변문화센터가 설치되어 있어, 이곳을 찾는 어린이들이 자연과 더불어 마음껏 뛰어놀 수 있는 자연학습장으로 이용할 수 있다. 인근에는 난지캠핑장이 조성되어 있어 바비큐를 즐기며 야영을 할 수 있어 더더욱 인기가 좋다.',
								'02-3780-0611', '	http://hangang.seoul.go.kr', '서울특별시 마포구 한강난지로 162', 
								'상시개방', '연중무휴',
								'가능', '난지 2주차장에 장애인 전용 주차구역이 있음(2개)_무장애 편의시설',
								'무료',
								 'location_detailAction.lc', '난지한강공원1.jpg', '난지한강공원2.jpg');

INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES ((SELECT NVL(MAX(ti_num)+1, 1) FROM travel_tourInfo_tbl), '한국어', 241, '제주 서귀포시', '성산일출봉', '걸출한 일출 포인트', 
'해발 180m인 성산 일출봉은 약 5,000년 전 제주도 수많은 분화구 중에서는 드물게 바닷속에서 수중폭발한 화산체이다. 용암이 물에 섞일 때 일어나는 폭발로 용암은 고운 화산재로 부서져 분화구 둘레에 원뿔형으로 쌓여 있다. 원래는 화산섬이었지만 신양해수욕장 쪽 땅과 섬 사이에 모래와 자갈이 쌓여 육지와 연결이 된 것이다. 일출봉 정상에는 지름 600m, 바닥면의 높이 해발 90m에 면적이 214,400㎡나 되는 분화구가 자리한다. 예로부터 이곳 성산일출봉 정상에서 바라보는 일출 광경은 영주 10경(제주의 경승지) 중에서 으뜸이라 하였다. 넘실대는 푸른 바다 저편 수평선에서 이글거리며 솟아오르는 일출은 온 바다를 물들이고 보는 이의 마음까지도 붙잡아 놓으며 보는 이로 하여금 저절로 감탄케 한다.',
								'064-783-0959', 'https://www.visitjeju.net/kr', '제주특별자치도 서귀포시 성산읍 일출로 284-12', 
								'- 1~2월, 11~12월 06:00~18:00 (매표마감 17:00)
								- 3~4월, 9~10월 05:00~19:00 (매표마감 18:00)
								- 5~8월 04:30~20:00 (매표마감 19:00)', '매달 첫째주 월요일',
								'가능', '장애인 전용 주차구역 주차대수 : 8대(성산일출봉주차장)
										주변 휠체어 이용자 등이 이용할 수 있는 여유공간 있음.
										관광지까지의 거리 : 약 100m',
								'	[개인]
									- 어른 5,000원
									- 청소년/군인/어린이 2,500원 / 
									[단체(10인 이상)]
									- 어른 4,000원
									- 청소년/군인/어린이 2,000원
									※ 도민 및 국가유공자, 장애인 등 증명서류 지참 시 입장료 면제',
								 'location_detailAction.lc', '성산일출봉1.jpg', '성산일출봉2.jpg');

INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES ((SELECT NVL(MAX(ti_num)+1, 1) FROM travel_tourInfo_tbl), '한국어', 242, '제주 제주시', '협재해수욕장', '투명한 물에 에메랄드빛 물감을 풀어놓은 듯한 영롱한 해변', 
'협재해수욕장은 제주시 서쪽 32km 거리의 한림공원에 인접해 있다. 조개껍질 가루가 많이 섞인 백사장과 앞바다에 떠 있는 비양도, 코발트 빛깔의 아름다운 바다와 울창한 소나무 숲이 한데 어우러진 풍광이 매우 아름답다. 백사장의 길이 약 200m, 폭은 60m, 평균수심 1.2m, 경사도 3~8도로서 수심이 얕고 경사가 완만하여 가족 단위의 해수욕장으로 적합하다. 이 해수욕장의 남서쪽 해안은 금릉해수욕장과 이어져 있는데, 주민들은 두 해변을 합쳐 협재해수욕장이라고도 부른다. 해수욕장 내에는 탈의실, 샤워실, 휴게소, 식수대, 화장실 등 각종 편의시설이 있어 이용하기에도 편리하다. 또 해수욕장 주변에는 짙은 송림이 있어 야영과 산림욕을 즐길 수 있고, 전복과 소라가 많이 잡히기 때문에 싱싱한 해산물을 마음껏 맛볼 수 있다. 멀지 않은 곳에는 한림공원과 협재굴, 명월대, 황룡사, 영각사 등이 있어 해수욕과 함께 주변을 둘러볼 수 있으며 특히 해수욕장 정면에 보이는 비양도의 모습은 맑고 깨끗한 해수와 어울려 아름다운 풍광을 연출하며 이곳에서 바라보는 낙조 또한 아름답다.

◎ 한류의 매력을 만나는 여행 정보
시원한 파도 소리, 에메랄드빛 바다, 백사장 옆 검은 현무암 위에서 반갑게 손을 흔드는 세븐틴이 있다. 세븐틴이 팬인 캐럿에게 보내는 노래 <사랑쪽지>엔 예쁜 사랑이 담겨 있다. 협재해수욕장은 수심이 얕아 수영을 못 하는 사람들도 물놀이하기 좋고, 옆쪽으로 야자수, 소나무 숲, 잔디가 있어 산책하거나 캠핑하기에도 적합하다.',
								'064-728-3981(해수욕장 개장 기간 동안만)', 'http://www.visitjeju.net/', '제주특별자치도 제주시 한림읍 한림로 329-10', 
								'상시개방', '	연중무휴',
								'가능', '장애인 전용 주차구역 있음(3대,공영주차장)_무장애 편의시설',
								'없음',
								 'location_detailAction.lc', '협재해수욕장1.jpg', '협재해수욕장2.jpg');

INSERT INTO travel_tourInfo_tbl(ti_num, ti_language, tc_num, ti_location,
								ti_name, ti_content, ti_content_big, ti_qna, ti_url, ti_address, ti_open, ti_holiday,
								ti_parking, ti_parking2, ti_admission, ti_detail_imgUrl, ti_detail_url, ti_detail_url2)
VALUES ((SELECT NVL(MAX(ti_num)+1, 1) FROM travel_tourInfo_tbl), '한국어', 241, '제주 서귀포시', '제주동백수목원', '동화속에 들어와있는 듯한 분위기의 동백꽃 숲', 
'제주동백수목원은 사철 푸른 동백과 철따라 지저귀는 이름 모를 새, 풍요로움이 가득한 감귤원과 함께 남국의 정취를 느끼게 한다. 동백나무꽃은 이른 봄에 붉은색 꽃이 피는데 매우 아름다우며, 꽃이 피는 시기에 따라 춘백, 추백, 동백으로 부른다.
제주동백수목원은 위미동백군락지 근처에 위치하고 있는데, 동백 꽃 뿐만 아니라 일정하게 둥근 형태를 띈 수형도 아름다워 최근 포토 스팟으로 유명세를 띄고 있다. 사유지여서 잘 알려지지 않았지만 최근에는 입장료를 받고 사진 촬영을 허가해주고 있다.

(출처 : 비짓제주)',
								'064-764-4473', 'https://instagram.com/jeju_camellia_arboretum', '제주특별자치도 서귀포시 남원읍 태위로 (288)', 
								'09:30~17:30 (발권마감 17:00)', '연중무휴',
								'가능', '정보없음',
								'- 성인 8,000원
								- 어린이 5,000원
								- 장애인, 유공자, 경로,도민 6,000원',
								 'location_detailAction.lc', '제주동백수목원1.jpg', '제주동백수목원2.jpg');


COMMIT;

SELECT *
  FROM travel_tourInfo_tbl
 WHERE ti_location LIKE '%서울%'
 ORDER BY ti_num DESC;
	 
SELECT *
  FROM travel_tourInfo_tbl;

SELECT *
  FROM travel_tourInfo_tbl
WHERE ti_location ='서울 은평구', '서울 용산구';

---------------------------------------------------------
---------------------------------------------------------

SELECT *
FROM travel_tourcity_tbl;

COMMIT;

SELECT DISTINCT tc_area, tc_si_num
	  FROM travel_tourcity_tbl
	ORDER BY tc_si_num;
	
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_si_num)
VALUES ('0', '전국', '0');

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('1', '서울', '전체', '1', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num) 
VALUES ('2', '서울', '강남구', '1', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('3', '서울', '도봉구', '1', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('4', '서울', '동대문구', '1', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('5', '서울', '동작구', '1', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('6', '서울', '마포구', '1', '5');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('7', '서울', '서대문구', '1', '6');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('8', '서울', '서초구', '1', '7');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('9', '서울', '성동구', '1', '8');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('10', '서울', '성북구', '1', '9');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('11', '서울', '송파구', '1', '10');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('12', '서울', '양천구', '1', '11');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('13', '서울', '강동구', '1', '12');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('14', '서울', '영등포구', '1', '13');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('15', '서울', '용산구', '1', '14');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('16', '서울', '은평구', '1', '15');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('17', '서울', '종로구', '1', '16');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('18', '서울', '중구', '1', '17');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('19', '서울', '중랑구', '1', '18');

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('20', '서울', '강북구', '1', '19');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('21', '서울', '강서구', '1', '20');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('22', '서울', '관악구', '1', '21');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('23', '서울', '광진구', '1', '22');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('24', '서울', '구로구', '1', '23');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('25', '서울', '금천구', '1', '24');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('26', '서울', '노원구', '1', '25');

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('27', '인천', '전체', '2', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('28', '인천', '강화군', '2', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('29', '인천', '중구', '2', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('30', '인천', '계양구', '2', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('31', '인천', '미추홀구', '2', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('32', '인천', '남동구', '2', '5');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('33', '인천@동구', '2', '6');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('34', '인천', '부평구', '2', '7');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('35', '인천', '서구', '2', '8');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('36', '인천', '연수구', '2', '9');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('37', '인천', '옹진군', '2', '10');

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('38', '대전', '전체', '3', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('39', '대전', '대덕구', '3', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('40', '대전', '동구', '3', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('41', '대전', '서구', '3', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('42', '대전', '유성구', '3', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('43', '대전', '중구', '3', '5');

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('44', '대구', '전체', '4', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('45', '대구', '남구', '4', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('46', '대구', '달서구', '4', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('47', '대구', '달성군', '4', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('48', '대구', '동구', '4', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('49', '대구', '북구', '4', '5');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('50', '대구', '서구', '4', '6');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('51', '대구', '수성구', '4', '7');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('52', '대구', '중구', '4', '8');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('53', '대구', '군위군', '4', '9');

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('54', '광주', '전체', '5', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('55', '광주', '광산구', '5', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('56', '광주', '남구', '5', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('57', '광주', '동구', '5', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('58', '광주', '북구', '5', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('59', '광주', '서구', '5', '5');


INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('60', '부산', '전체', '6', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('61', '부산', '강서구', '6', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('62', '부산', '사하구', '6', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('63', '부산', '서구', '6', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('64', '부산', '수영구', '6', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('65', '부산', '연제구', '6', '5');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('66', '부산', '영도구', '6', '6');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('67', '부산', '중구', '6', '7');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('68', '부산', '해운대구', '6', '8');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('69', '부산', '금정구', '6', '9');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('70', '부산', '기장군', '6', '10');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('71', '부산', '남구', '6', '11');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('72', '부산', '동구', '6', '12');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('73', '부산', '동래구', '6', '13');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('74', '부산', '부산진구', '6', '14');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('75', '부산', '북구', '6', '15');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('76', '부산', '사상구', '6', '16');
COMMIT;

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('77', '울산', '전체', '7', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('78', '울산', '중구', '7', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('79', '울산', '남구', '7', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('80', '울산', '동구', '7', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('81', '울산', '북구', '7', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('82', '울산', '울주군', '7', '5');

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('83', '경기', '전체', '31', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num) 
VALUES ('84', '경기', '가평군', '31', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('85', '경기', '동두천시', '31', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('86', '경기', '부천시', '31', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('87', '경기', '성남시', '31', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('88', '경기', '수원시', '31', '5');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('89', '경기', '시흥시', '31', '6');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('90', '경기', '안산시', '31', '7');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('91', '경기', '안성시', '31', '8');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('92', '경기', '안양시', '31', '9');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('93', '경기', '양주시', '31', '10');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('94', '경기', '양평군', '31', '11');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('95', '경기', '고양시', '31', '12');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('96', '경기', '여주시', '31', '13');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('97', '경기', '연천군', '31', '14');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('98', '경기', '오산시', '31', '15');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('99', '경기', '용인시', '31', '16');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('100', '경기', '의왕시', '31', '17');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('101', '경기', '의정부시', '31', '18');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('102', '경기', '이천시', '31', '19');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('103', '경기', '파주시', '31', '20');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('104', '경기', '평택시', '31', '21');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('105', '경기', '포천시', '31', '22');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('106', '경기', '과천시', '31', '23');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('107', '경기', '하남시', '31', '24');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('108', '경기', '화성시', '31', '25');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('109', '경기', '광명시', '31', '26');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('110', '경기', '광주시', '31', '27');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('111', '경기', '구리시', '31', '28');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('112', '경기', '군포시', '31', '29');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('113', '경기', '김포시', '31', '30');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('114', '경기', '남양주시', '31', '31');
COMMIT;
SELECT * FROM travel_tourcity_tbl;

SELECT *
	  FROM travel_tourInfo_tbl
	 WHERE tc_num=(SELECT tc_num
				     FROM travel_tourcity_tbl
				    WHERE tc_si_num=32
					  AND tc_gu IN (:'양양군'));


ROLLBACK;

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('115', '강원', '전체', '32', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num) 
VALUES ('116', '강원', '강릉시', '32', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('117', '강원', '인제군', '32', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('118', '강원', '정선군', '32', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('119', '강원', '철원군', '32', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('120', '강원', '춘천시', '32', '5');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('121', '강원', '태백시', '32', '6');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('122', '강원', '평창군', '32', '7');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('123', '강원', '홍천군', '32', '8');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('124', '강원', '화천군', '32', '9');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('125', '강원', '횡성군', '32', '10');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('126', '강원', '고성군', '32', '11');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('127', '강원', '동해시', '32', '12');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('128', '강원', '삼척시', '32', '13');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('129', '강원', '속초시', '32', '14');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('130', '강원', '양구군', '32', '15');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('245', '강원', '양양군', '32', '16');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('131', '강원', '영월군', '32', '17');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('132', '강원', '원주시', '32', '18');


INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('133', '충북', '전체', '33', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num) 
VALUES ('134', '충북', '괴산군', '33', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('135', '충북', '청주시', '33', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('136', '충북', '충주시', '33', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('137', '충북', '증평군', '33', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('138', '충북', '단양군', '33', '5');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('139', '충북', '보은군', '33', '6');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('140', '충북', '영동군', '33', '7');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('141', '충북', '옥천군', '33', '8');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('142', '충북', '음성군', '33', '9');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('143', '충북', '제천시', '33', '10');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('144', '충북', '진천군', '33', '11');

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('145', '충남', '전체', '34', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num) 
VALUES ('146', '충남', '공주시', '34', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('147', '충남', '예산군', '34', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('148', '충남', '천안시', '34', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('149', '충남', '청양군', '34', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('150', '충남', '태안군', '34', '5');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('151', '충남', '홍성군', '34', '6');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('152', '충남', '계룡시', '34', '7');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('153', '충남', '금산군', '34', '8');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('154', '충남', '논산시', '34', '9');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('155', '충남', '당진시', '34', '10');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('156', '충남', '보령시', '34', '11');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('157', '충남', '부여군', '34', '12');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('158', '충남', '서산시', '34', '13');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('159', '충남', '서천군', '34', '14');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('160', '충남', '아산시', '34', '15');

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('161', '경북', '전체', '35', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num) 
VALUES ('162', '경북', '경산시', '35', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('163', '경북', '성주군', '35', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('164', '경북', '안동시', '35', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('165', '경북', '영덕군', '35', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('166', '경북', '영양군', '35', '5');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('167', '경북', '영주시', '35', '6');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('168', '경북', '영천시', '35', '7');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('169', '경북', '예천군', '35', '8');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('170', '경북', '울릉군', '35', '9');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('171', '경북', '울진군', '35', '10');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('172', '경북', '의성군', '35', '11');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('173', '경북', '경주시', '35', '12');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('174', '경북', '청도군', '35', '13');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('175', '경북', '청송군', '35', '14');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('176', '경북', '칠곡군', '35', '15');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('177', '경북', '포항시', '35', '16');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('178', '경북', '고령군', '35', '17');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('179', '경북', '구미시', '35', '18');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('180', '경북', '김천시', '35', '19');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('181', '경북', '문경시', '35', '20');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('182', '경북', '봉화군', '35', '21');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('183', '경북', '상주시', '35', '22');
COMMIT;

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('183', '경남', '전체', '36', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num) 
VALUES ('184', '경남', '거제시', '36', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('185', '경남', '양산시', '36', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('186', '경남', '의령군', '36', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('187', '경남', '진주시', '36', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('188', '경남', '창녕군', '36', '5');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('189', '경남', '창원시', '36', '6');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('190', '경남', '통영시', '36', '7');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('191', '경남', '하동군', '36', '8');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('192', '경남', '함안군', '36', '9');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('193', '경남', '거창군', '36', '10');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('194', '경남', '함양군', '36', '11');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('195', '경남', '합천군', '36', '12');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('196', '경남', '고성군', '36', '13');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('197', '경남', '김해시', '36', '14');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('198', '경남', '남해군', '36', '15');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('199', '경남', '밀양시', '36', '16');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('200', '경남', '사천시', '36', '17');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('201', '경남', '산청군', '36', '18');

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('202', '전북', '전체', '37', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num) 
VALUES ('203', '전북', '고창군', '37', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('204', '전북', '임실군', '37', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('205', '전북', '장수군', '37', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('206', '전북', '진주시', '37', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('207', '전북', '정읍시', '37', '5');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('208', '전북', '진안군', '37', '6');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('209', '전북', '군산시', '37', '7');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('210', '전북', '김제시', '37', '8');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('211', '전북', '남원시', '37', '9');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('212', '전북', '무주군', '37', '10');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('213', '전북', '부안군', '37', '11');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('214', '전북', '순창군', '37', '12');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('215', '전북', '완주군', '37', '13');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('216', '전북', '익산시', '37', '14');

ROLLBACK;

COMMIT;

SELECT * FROM travel_tourcity_tbl;

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('217', '전남', '전체', '38', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num) 
VALUES ('218', '전남', '강진군', '38', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('219', '전남', '보성군', '38', '2');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('220', '전남', '순천시', '38', '3');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('221', '전남', '신안군', '38', '4');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('222', '전남', '여수시', '38', '5');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('223', '전남', '영광군', '38', '6');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('224', '전남', '영암군', '38', '7');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('225', '전남', '완도군', '38', '8');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('226', '전남', '장성군', '38', '9');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('227', '전남', '고흥군', '38', '10');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('228', '전남', '장흥군', '38', '11');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('229', '전남', '진도군', '38', '12');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('230', '전남', '함평군', '38', '13');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('231', '전남', '해남군', '38', '14');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('232', '전남', '화순군', '38', '15');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('233', '전남', '곡성군', '38', '16');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('234', '전남', '광양시', '38', '17');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('235', '전남', '구례군', '38', '18');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('236', '전남', '나주시', '38', '19');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('237', '전남', '담양군', '38', '20');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('238', '전남', '목포시', '38', '21');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('239', '전남', '무안군', '38', '22');

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('240', '제주', '전체', '39', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num) 
VALUES ('241', '제주', '서귀포시', '39', '1');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('242', '제주', '제주시', '39', '2');

INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num)
VALUES ('243', '세종', '전체', '8', '0');
INSERT INTO travel_tourcity_tbl(tc_num, tc_area, tc_gu, tc_si_num, tc_gu_num) 
VALUES ('244', '세종', '세종시', '8', '1');

COMMIT;
-------------------------------------------------------------