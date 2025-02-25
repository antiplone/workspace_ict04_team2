-- 지역 테이블
DROP TABLE travel_area_tbl CASCADE CONSTRAINTS;
CREATE TABLE travel_area_tbl (
	tr_area_id 		    NUMBER(38) PRIMARY KEY,		-- 지역 번호
	tr_area_english 	VARCHAR2(50),				-- 지역 영문
	tr_area_korea 		VARCHAR2(50),				-- 지역 한글
	tr_area_content	    CLOB  NOT NULL,				-- 지역 설명
	tr_area_image 		VARCHAR2(100)				-- 지역 이미지
);

INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 1 , 'JEJU', '대한민국 제주', '섬 전체가 하나의 거대한 관광자원인 제주도. 에메랄드빛 물빛이 인상적인 협재 해수욕장은 제주 대표 여행지며, 파도가 넘보는 주상절리와 바다 위 산책로인 용머리 해안은 제주에서만 볼 수 있는 천혜의 자연경관으로 손꼽힌다. 드라마 촬영지로 알려진 섭지코지는 꾸준한 사랑을 받고 있으며 한라봉과 흑돼지, 은갈치 등은 제주를 대표하는 음식이다.',
 '/resources/images/recommendCourse/area/Jeju.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 2 , 'BUSAN', '대한민국 부산', '우리나라 제 2의 수도 부산광역시. 부산 대표 관광지로 손꼽히는 해운대는 마린시티의 야경이 더해져 더욱 화려한 해변이 된다. 감천 문화마을은 사진 찍기에 좋으며 매해 가을마다 개최되는 아시아 최대 규모의 영화제인 부산국제영화제와 함께 부산의 구석구석을 즐겨보는 것도 좋다. 전통시장 투어가 있을 만큼 먹거리가 가득한 부산의 맛기행은 필수!', 
 '/resources/images/recommendCourse/area/Busan.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 3 , 'SEOUL', '대한민국 서울', '과거와 현재가 공존하며 하루가 다르게 변하는 서울을 여행하는 일은 매일 새롭다. 도시 한복판에서 600년의 역사를 그대로 안고 있는 아름다운 고궁들과 더불어 대한민국의 트렌드를 이끌어나가는 예술과 문화의 크고 작은 동네들을 둘러볼 수 있는 서울은 도시 여행에 최적화된 장소다.', 
 '/resources/images/recommendCourse/area/Seoul.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 4 , 'GYEONGJU', '대한민국 경주', '지붕 없는 박물관 경주. 경주는 그만큼 발길이 닿는 어느 곳이든 문화 유적지를 만날 수 있는 곳이다. 밤이면  더 빛나는 안압지를 비롯해 허허벌판에 자리를 굳건히 지키고 있는 첨성대. 뛰어난 건축미를 자랑하는 불국사 석굴암까지 어느 하나 빼놓을 수 없다. 경주 여행의 기록을 남기고 싶다면 스탬프 투어를 이용해보는 것도 좋다. 16곳의 명소를 탐방할 때마다 찍히는 도장 모으는 재미가 쏠쏠하다. 모바일 앱으로도 스탬프 투어 참여가 가능하다.', 
 '/resources/images/recommendCourse/area/Gyeongju.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 5 , 'GANGNEUNG', '대한민국 강릉', '은은한 커피향이 남다른 강원도 강릉시. 그중에도 카페거리로 유명한 안목해변은 발이 닿는 어디든 향긋한 커피 한 잔에 지평선 끝까지 펼쳐지는 바다 풍경은 덤으로 얻을 수 있다. 일출 명소로 유명한 정동진과 야경이 아름다운 경포대로 대표 여행 코스! 구름도 머물다 간다는 해발 1,100mdp 에 위치한 강릉 안반데기 마을은 전망대에 올라 드넓게 펼쳐진 배추밭이 붉게 물드는 일출 전경이 일품이다.', 
 '/resources/images/recommendCourse/area/Gangneung.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 6 , 'YEOSU', '대한민국 여수', '국제 해양관광의 중심 전남 여수시. 3천여 그루의 동백나무로 가득 찬 붉은 섬 오동도는 웰빙 트래킹 코스를 갖추고 있어 한층 더 운치 있다. 해상 케이블카를 타면 마치 바다 위를 걷는 듯한 느낌이 들며 탁 트인 바다 전망을 감상할 수 있다. 노래 가사에도 나오는 낭만적이고 황홀한 여수의 밤바다는 돌산대교와 음악분수가 함께 어우러져 멋진 야경을 선사한다. 공식 밥도둑 게장백반과 돌산 갓김치, 갈치조림 등 풍부한 먹거리까지 갖춘 인기 만점 관광지!', 
 '/resources/images/recommendCourse/area/Yeosu.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 7 , 'GEOJETONGYEONG', '대한민국 거제통영', '예술과 음식의 맛에 혼을 빼앗기는 통영. 보물 같은 섬 욕지도와 바다를 품은 장사도 해상공원 등 수려한 자연경관이 가득한 곳으로 많이 알려져 있지만, 시인 백석이 지나간 자리와 통영이 고향인 소설가 박경리의 발자취가 깃들어 있는 곳이기도 하다. 통영의 명물이 되었다는 충무 김밥이나 대표 간식 꿀빵은 통영 여행에 빠지지 않는 주전부리 목록이다.', 
 '/resources/images/recommendCourse/area/Geojetongyeong.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 8 , 'NAMWON', '대한민국 남원', '춘향의 사랑이 남겨진 남원. 남원의 대표 광한루는 춘향과 몽룡의 사랑이 시작된 곳으로 연못 위에 세워진 오작교가 운치를 더한다. 5가지의 테마로 꾸며진 춘향 테마파크와 작가 최명희의 대하소설의 무대가 되었던 <혼불> 문학관도 가볼 만하다. 지리산 바래봉은 철쭉제가 열리는 봄에 여행하기 좋다.', 
 '/resources/images/recommendCourse/area/Namwon.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 9 , 'JEONJU', '대한민국 전주', '한국의 멋이 살아있는 전주. 도심 한복판에 자리한 한옥마을에 들어서 면 시대를 거슬러가는 기분이다. '경사스러운 터에 지어진 궁궐'이란 의미의 경기전에 들어서면 대나무가 서로 부대끼며 내는 소리에 귀 기 울이게 된다. 전주 야경투어 명소의 대표인 전동성당과 한옥마을을 한 눈에 내려다볼 수 있는 오목대 역시 빼놓을 수 없는 곳. 마을 전체가 미 술관인 자만벽화마을은 전주의 대표 포토존이다.', 
 '/resources/images/recommendCourse/area/Jeonju.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 10 , 'POHANG', '대한민국 포항', '경북 동남부에 위치해 한반도에서 가장 빨리 해가 뜨는 고장으로 알려진 경상북도 포항은 천혜의 해안선을 가진 해양경관의 보고이다. 특히 감포에서 구룡포까지 바닷가 도로에 펼쳐지는 풍광은 세계적인 미항인 나폴리나 시드니를 능가하는 아름답고 환상적 해양자원이다. 북부, 칠포해수욕장을 비롯한 여러 해수욕장이 있고 국립 등대박물관, 호미 곶 등 해양관광자원은 포항의 대표적 관광자원이다.', 
 '/resources/images/recommendCourse/area/Pohang.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 11 , 'DAEJEON', '대한민국 대전', '다양한 테마 여행이 가능한 대전광역시. 맨발로 걸을 수 있는 계족산 황톳길은 온몸으로 자연을 느끼는 여행을 할 수 있으며, 대전 근현대 전시관과 남간정사 등 대전에 있는 역사 문화 공간을 코스로 잡아도 좋다. 아이들이 좋아하는 동물원이 있는 오월드와 가볍게 산책하기 좋은 유림공원도 있어 주말 가족 나들이 코스로도 손색이 없다.',
 '/resources/images/recommendCourse/area/Daejeon.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 12 , 'INCHEON', '대한민국 인천', '살짝 비릿한 바다향이 매력적인 인천광역시. 지리적 특징을 잘 이용하 여 내륙과 해안 지역의 관광이 두루 발달한 곳이다. 대표적인 해양관광 지로는 을왕리 해수욕장을 비롯해 문화의 거리가 갖춰진 월미도 등이 있으며, 한국 속 작은 중국이라 불리는 차이나타운도 인천 여행지로 손 꼽힌다. 이 외에도 인천 각처에 오랜 역사 유물들이 산재해 있어 역사 를 테마로 여행 코스를 잡아보는 것도 좋다.',
 '/resources/images/recommendCourse/area/Incheon.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 13 , 'CHUNCHEON', '대한민국 춘천', '경춘선 청춘열차와 함께 일상 속 한 발짝 더 가까워진 낭만도시 춘천. 춘천의 대표 여행지로 손꼽히는 남이섬은 사계절마다 다채로운 모습으로 늘 새로운 공간을 연출하고, 김유정 작품의 무대가 되었던 실레마을을 걷다 보면 점순이 등 작품 속 인물들이 마중 나올 것만 같다. 자연 속에 파묻힌 문학과 예술의 숨결을 느끼고 싶다면 춘천 청춘열차에 올라보자.',
 '/resources/images/recommendCourse/area/Chuncheon.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 14 , 'GUNSAN', '대한민국 군산', '1930년대 우리나라 근대역사를 고스란히 간직한 도시 군산. 근대문화 유산 투어 코스를 따라 걷다보면 곳곳에 남아있는 일본식 주택과 근대 건축물들을 쉽게 볼 수 있다. 2.5km 길이의 오래된 철도가 놓인 경암 동 철길마을은 출사지로도 유명. 우리나라에서 가장 오래된 빵집, 전국 5대 짬뽕 맛집, 70년 역사의 호떡집 등 군산 맛집 먹방 여행도 추천한다.',
 '/resources/images/recommendCourse/area/Gunsan.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 15 , 'MOKPO', '대한민국 목포', '아름다운 한 폭의 동양화를 연상시키는 유달산에서 다도해의 경관을 한눈에 감상할 수 있다. 때묻지 않은 자연을 간직한 사랑의 섬 외달도는 전국에서 휴양하기 좋은 섬 30위 안에 선정될 만큼 아름다운 바다와 해변이 특징이다. 목포 평화광장 앞 바다에는 음악에 맞춰 빛과 물이 어우러지는 세계 최대의 춤추는 바다분수가 있어 이색적인 볼거리를 제공하고 있다. 갯벌 속의 인삼이라 불리는 세 발 낙지는 목포의 대표적인 토산품 중 하나이며 일부 지역에서만 잡히는 지역 특산품이다.',
 '/resources/images/recommendCourse/area/Mokpo.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 16 , 'ANDONG', '대한민국 안동', '마을 전체가 유네스코 세계문화유산에 등재되어 있는 안동 하회마을. 퇴계 이황 선생의 가르침이 남아있는 도산서원과 그가 거닐던 예던길은 한적한 등산 코스로 좋다. 아기자기한 그림으로 채워진 신세동 벽화 마을과 환상적인 야경을 볼 수 있는 월영교도 빼놓을 수 없다.', 
 '/resources/images/recommendCourse/area/Andong.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 17 , 'ULLEUNG', '대한민국 울릉도', '수백만 년 전 자연의 모습을 고스란히 간직한 울릉군. 겨울철 설경이 뛰어난 나리분지와 울릉도의 숨은 비경인 관음도는 약 14m 높이의 관음쌍굴을 보기 위해 많은 이들이 발걸음 한다. 생김새에 따른 이색 암석 형상들도 눈에 띄는데, 새끼를 등에 업은 거북바위부터 바닷물을 들이키는 코끼리바위, 영지버섯 모양의 버섯바위까지 다양해 바위 기행은 이곳에서만 즐길 수 있는 특별한 여행 테마이다. 자원의 보물 창고 인 독도도 꼭 한번 다녀와야 할 여행지!', 
 '/resources/images/recommendCourse/area/Ulleung.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 18 , 'GAPYEONG', '대한민국 가평', '자연의 정취에 젖어들게 만드는 가평 아침고요수목원. 어디를 둘러봐도 풍경이 가득해 지루할 틈이 없다. 그중에도 가평하면 빼놓을 수 없는 쁘띠프랑스는 프랑스를 떠올리게 하는 이국적인 풍경으로 빨간 지붕이 매력적이다. 또한 매년 가을에 열리는 자라섬 국제재즈페스티벌은 석양과 음악이 어우러질 때까지 재즈의 매력에 흠뻑 취해볼 수 있다.', 
 '/resources/images/recommendCourse/area/Gapyeong.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 19 , 'JECHEON', '대한민국 제천', '문화재의 집합소 충북 제천시 청풍문화재단지를 시작으로 국내에서 가장 오래된 저수지 의림지를 비롯해 한국 천주교 전파의 진원지인 베론성지는 편히 둘러보기에도 좋다. 월악산에 둘러싸여 있는 송계계곡은 울창한 숲과 깊은 계곡이 있어 여름철 피서지로 인기가 높다.', 
 '/resources/images/recommendCourse/area/Jecheon.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 20 , 'SUWON', '대한민국 수원', '서울의 축소판이라고 할 수 있는 경기도 수원시. 서울만큼이나 정치, 경제, 문화, 사회 등 다양한 부문에서 두루 발달한 도시이다. 그중에도 고고학적 가치를 지닌 수원화성은 수원의 자랑이며, 화성행궁 열차를 타고 대표 명소를 둘러보는 것도 좋다. 광교호수공원은 야경이 아름다워 밤에도 산책을 즐기는 사람들이 많으며, 수원통닭골목은 저렴한 가격에 비해 양이 푸짐에 입소문을 타고 전국 각지에서 많은 이들이 찾아오고 있다.', 
 '/resources/images/recommendCourse/area/Suwon.jpg');
 
INSERT INTO travel_area_tbl(tr_area_id, tr_area_english, tr_area_korea, tr_area_content, tr_area_image)
 VALUES( 21 , 'YEONGWOL', '대한민국 영월', '작은 한반도가 숨어있는 영월군. 멀리서도 물속이 훤히 들여다보일 만큼 맑은 평창강이 감싸 안은 섬암마을은 한반도를 빼닯아 한반도 지형이라는 이름을 갖고 있다. 이 아름다운 경관에 맞서는 신비로움이 숨어있으니 바로 고씨동굴이다. 약 5억 년 전에 형성된 것으로 추정되는 이 동굴은 석회동굴로 새로운 볼거리가 가득하다. 그 밖에 육지 속 작은섬 청령포와 여름에는 래프팅을, 겨울이면 얼음낚시를 즐길 수 있는 동강도 인기 관광 코스!', 
 '/resources/images/recommendCourse/area/Yeongwol.jpg');

COMMIT;

SELECT *
FROM travel_area_tbl
ORDER BY tr_area_id;

-- 추천코스 테이블
DROP TABLE travel_recommendCourse_tbl CASCADE CONSTRAINTS;
CREATE TABLE travel_recommendCourse_tbl (
	tr_course_id		 NUMBER(38)PRIMARY KEY,							 -- 추천코스 번호
	tr_area_id 			 NUMBER(38) REFERENCES  travel_area_tbl(tr_area_id), -- 지역 번호
	tr_course_image 	 VARCHAR2(100),				  		 	 			 -- 추천코스 이미지
	tr_course_title 	 VARCHAR2(100) NOT NULL,				  		 	 -- 추천코스 제목
	tr_course_taketime   VARCHAR2(50),										 -- 추천코스 소요일
	tr_course_tag 		 CLOB  NOT NULL,									 -- 추천코스 여행지 태그
	tr_course_map		 VARCHAR2(100)            						 -- 추천코스 지도
);

-- 제주 코스 1
INSERT INTO travel_recommendCourse_tbl(tr_course_id, tr_area_id, tr_course_image, tr_course_title, tr_course_taketime, tr_course_tag, tr_course_map)
 VALUES(1, 1, '/travel_planner/resources/images/recommendCourse/course/Jeju_course_1-1.jpg', '제주의 자연을 느끼다', '당일여행', '#25_26한국관광100선 #둘레길 #레포츠 #액티브시니어 #제주권 #추천코스 #한국관광100선 #한국의둘레길', '/travel_planner/resources/images/recommendCourse/course_detail/map/Jeju_course_map1.png');  

-- 제주 코스 2
INSERT INTO travel_recommendCourse_tbl(tr_course_id, tr_area_id, tr_course_image, tr_course_title, tr_course_taketime, tr_course_tag, tr_course_map)
 VALUES(2, 1, '/travel_planner/resources/images/recommendCourse/course/Jeju_course_2-1.jpg', '제주의 특별한 카페찾아가기', '당일여행', '#1박2일 #2박3일 #당일코스 #추천코스', '/travel_planner/resources/images/recommendCourse/course_detail/map/Jeju_course_map2.png');  

-- 제주 코스 3
INSERT INTO travel_recommendCourse_tbl(tr_course_id, tr_area_id, tr_course_image, tr_course_title, tr_course_taketime, tr_course_tag, tr_course_map)
 VALUES(3, 1, '/travel_planner/resources/images/recommendCourse/course/Jeju_course_3-1.jpg', '제주 사계해안도로, 바다와 산의 하모니에 홀릭하다!', '당일여행', '#드라이브코스 #차타고 #추천코스 #해안도로', '/travel_planner/resources/images/recommendCourse/course_detail/map/Jeju_course_map3.png');  
 
-- 제주 코스 4
INSERT INTO travel_recommendCourse_tbl(tr_course_id, tr_area_id, tr_course_image, tr_course_title, tr_course_taketime, tr_course_tag, tr_course_map)
 VALUES(4, 1, '/travel_planner/resources/images/recommendCourse/course/Jeju_course_4-1.jpg', '화산이 만든 비경을 찾아가는 탐험길', '당일여행', '#1박2일 #2박3일 #가을2박3일 #당일코스 #추천코스', '/travel_planner/resources/images/recommendCourse/course_detail/map/Jeju_course_map4.png');  

-- 제주 코스 5
INSERT INTO travel_recommendCourse_tbl(tr_course_id, tr_area_id, tr_course_image, tr_course_title, tr_course_taketime, tr_course_tag, tr_course_map)
 VALUES(5, 1, '/travel_planner/resources/images/recommendCourse/course/Jeju_course_5-1.jpg', '제주민의 삶과 문화를 느낄 수 있는 ‘어멍아방잔치마을’', '당일여행', '#1박2일 #2박3일 #가을여행 #가족여행 #당일코스 #등산 #따라비오름 #물영아리오름 #섬여행 #신풍리농촌체험휴양마을', '/travel_planner/resources/images/recommendCourse/course_detail/map/Jeju_course_map5.png');  

-- 제주 코스 6
INSERT INTO travel_recommendCourse_tbl(tr_course_id, tr_area_id, tr_course_image, tr_course_title, tr_course_taketime, tr_course_tag, tr_course_map)
 VALUES(6, 1, '/travel_planner/resources/images/recommendCourse/course/Jeju_course_6-1.jpg', '제주도 세계자연유산 탐방 3 코스', '당일여행', '#1박2일 #2박3일 #당일코스 #제주도_가볼만한곳 #추천코스', '/travel_planner/resources/images/recommendCourse/course_detail/map/Jeju_course_map6.png');  

-- 제주 코스 7
INSERT INTO travel_recommendCourse_tbl(tr_course_id, tr_area_id, tr_course_image, tr_course_title, tr_course_taketime, tr_course_tag, tr_course_map)
 VALUES(7, 1, '/travel_planner/resources/images/recommendCourse/course/Jeju_course_7-1.jpg', '화산섬 제주의 속살을 만나다.', '당일여행', '#1박2일 #2박3일 #가족체험여행 #당일코스 #등산 #등산로 #따라비오름 #레포츠 #박물관 #봄방학 #섬여행 #아이와함께', '/travel_planner/resources/images/recommendCourse/course_detail/map/Jeju_course_map7.png');  
 
-- 제주 코스 8
INSERT INTO travel_recommendCourse_tbl(tr_course_id, tr_area_id, tr_course_image, tr_course_title, tr_course_taketime, tr_course_tag, tr_course_map)
 VALUES(8, 1, '/travel_planner/resources/images/recommendCourse/course/Jeju_course_8-1.jpg', '몸과 마음을 치유하는 에코 테라피', '당일여행', '#1박2일 #2박3일 #당일코스 #추천코스', '/travel_planner/resources/images/recommendCourse/course_detail/map/Jeju_course_map8.png');  
 
-- 부산 코스 1
INSERT INTO travel_recommendCourse_tbl(tr_course_id, tr_area_id, tr_course_image, tr_course_title, tr_course_taketime, tr_course_tag, tr_course_map)
 VALUES(1, 2, '/travel_planner/resources/images/recommendCourse/course/Busan_course_1-1.jpg', '열정, 젊음, 시원함이 있는 밤바다 여행', '당일여행', '#가족코스 #바다풍경여행 #야경여행지 #야경코스 #연인코스 #추천코스 #친구와함께 #힐링코스', '/travel_planner/resources/images/recommendCourse/course_detail/map/Busan_course_map1.png');  

COMMIT;

SELECT *
FROM travel_recommendCourse_tbl;

-- 추천코스 상세 테이블
DROP TABLE travel_CourseInfo_tbl CASCADE CONSTRAINTS;
CREATE TABLE travel_CourseInfo_tbl (
	tr_Course_subId		   	  NUMBER(38),		-- 추천코스 서브번호
	tr_course_id		  	  NUMBER(38) REFERENCES  travel_recommendCourse_tbl(tr_course_id), -- 추천코스 번호
	tr_course_locationImage	  VARCHAR2(200),			    -- 여행지 이미지
	tr_course_location    	  VARCHAR2(100),			-- 추천코스 여행지명
	tr_course_locationContent CLOB  NOT NULL,		        -- 추천코스 코스 내용
	CONSTRAINT pk_courseInfo PRIMARY KEY (tr_course_id, tr_Course_subId) -- 복합 기본 키
);

-- 제주 1코스의 코스안내
INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(1, 1, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/서우봉둘레길.jpg', '서우봉둘레길',
 '서우봉둘레길은 제주도 조천읍 함덕해수욕장 동쪽 바다에 접해 있는, 제주올레길 19코스에 포함된 길이다. 봄이면 노란 유채꽃이 에메랄드빛 함덕해변과 어우러져 최고의 산책 코스로 손꼽힌다. 서우봉은 완만한 등성이가 크게 두 봉우리를 이루고 있는 원추형 화산체이며 바라보는 조망이 좋아 새해마다 일출제가 열린다. 서우봉은 역사적으로도 의미가 있는 곳이다. 진도에서 거제로 피신해온 삼별초군이 마지막으로 저항하였던 곳으로 김방경 장군과 삼별초군의 전투가 벌어진 지역이다. 서우봉 정상은 조선시대에 만들어진 봉수대가 있었고 일제강점기에 일본군이 구축한 동굴이 20곳 있다. 정상에 올라 함덕의 아름다운 물빛과 멀리 보이는 한라산을 감상하며 여유를 만끽하기 좋고, 패러글라이딩을 즐기는 인구가 늘고 있다.');  

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(2, 1, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/제주4.3평화공원.jpg', '제주4·3평화공원',
 '역사 이래로 영웅만을 기념하던 인류는 20세기에 이르러서야 민초들의 역사를 기념하기 시작했다. 제주 4.3평화공원은 4.3사건으로 인한 제주도 민간인 학살과 처절한 삶을 기억하고 추념하며, 화해와 상생의 미래를 열어가기 위한 평화 인권기념공원이다. 제주 4.3평화공원 조성사업은 제주4.3사건에 대한 공동체적 보상의 하나로 이루어졌으며, 4.3특별법 공포(2000), 공원부지 매입, 조성기본계획 연구 용역, 현상공모, 건축공사, 전시물 제작 및 설치 등이 이어여 2008년 3월 28일 개관하게 되었다.');  

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(3, 1, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/신풍 신천 바다목장.jpg', '신풍 신천 바다목장',
 '제주올레 3코스는 장장 14㎞에 걸친 중산간 길은 매우 고즈넉하고, 양옆에는 오래된 제주 돌담과 제주에 자생하는 수목이 울창하다. 이 구간을 지나면 처음으로 대중에게 공개되는 바다 목장길은 푸른 바다와 푸른 초장이 함께 어우러지는, 제주에서만 볼 수 있는 바당 올레길이다.');   

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(4, 1,'/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/쇠소깍.jpg', '쇠소깍',
 '제주도 서귀포시 하효동에 있는 쇠소깍은 원래는 소가 누워있는 형태라 하여 쇠둔이라는 지명이었는데, 효돈천을 흐르는 담수와 해수가 만나 깊은 웅덩이를 만들고 있어 ‘쇠소깍’이라고 붙여졌다. 쇠는 소, 소는 웅덩이, 깍은 끝이라는 의미를 담고 있다. 쇠소는 용암이 흘러내리면서 굳어져 형성된 계곡 같은 골짜기로 이름 만큼이나 재미나고 독특한 지형을 만들고 있다. 쇠소깍은 서귀포칠십리에 숨은 비경 중 하나로 깊은 수심과 용암으로 이루어진 기암괴석과 소나무숲이 조화를 이루면서 아름다운 풍광을 연출한다. 쇠소깍이 위치한 하효동은 한라산 남쪽 앞자락에 자리 잡고 있어 감귤의 주산지로 유명하여 마을 곳곳에 향긋한 감귤 냄새가 일품이다. 주변에는 주상절리대와 중문해수욕장, 천제연 폭포 등 유명한 관광지가 많아 함께 둘러보기에 좋다.');   

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(5, 1, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/정방폭포.jpg', '정방폭포',
 '천지연, 천제연과 더불어 제주도내 3대 폭포중의 하나인 정방폭포는 서귀포시 중심가에서 약 1.5㎞ 동남쪽에 위치해 있다. 바다로 직접 떨어지는 동양 유일의 해안폭포로서 높이 23m, 폭 8m, 깊이 5m에 이른다. 웅장한 폭포음과 쏟아지는 물줄기에 햇빛이 반사되면, 일곱색깔의 무지개가 푸른 바다와 함께 어우러져 신비의 황홀경을 연출한다. 예로부터 이곳을 정방하폭(正房夏瀑)이라 하여 영주십경의 하나로 삼았다. 중국 진나라 시황제가 "서불(徐 )"에게 동양의 삼신산의 하나인 한라산에 가서 불로초를 캐어 오도록 하였으나 불로초를 찾지 못하고 정방폭포의 절벽에 "서불과지(徐市過之)"라는 글을 새기고 서쪽으로 돌아갔다는 이야기가 있다. 해변을 끼고 높이 솟은 절벽에는 노송이 바다로 나뭇가지를 드리워 넘어질 듯 서 있으며 각종 수목이 울창하다.');

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(6, 1, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/사계해변.jpg', '사계해변',
 '사계해변은 산방산 바로 아래쪽에 자리한 해변으로 한적하고 조용한 것이 특징이다. 이곳에서는 형제섬, 산방산과 한라산, 용머리해안까지 조망이 가능하다. 깨끗한 모래와 푸른 바다가 어우러져 아름답다. 사계해변 인근 사계포구는 낚시 포인트로 낚시꾼들의 발길이 끊이지 않는다. 자연적으로 형성된 화산석이 둘러싸고 있는 모습의 사계해안은 제주 올레길 10코스에 해당되어 탐방객들이 늘고있다. 사계해변 인근에는 천연기념물로 지정되어 있는 사계발자국화석발간지를 만나볼 수 있다.');

-- 제주 2코스의 코스 안내
INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(1, 2, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/와랑와랑.jpg', '와랑와랑',
 '제주의 겨울 여행에서 빠지지 않는 코스인 제주 남부 지역 위미리 마을에 위치한 와랑와랑은 한겨울에 붉은 꽃을 피워내는 매혹적인 동백나무 군락지에서 몇 걸음 떨어지지 않은 곳에 위치하고 있다. 다양한 종류의 커피와 차, 쿠키와 주스 등을 판매하며, 그중에서도 단팥라떼와 찰떡구이는 와랑와랑의 겨울 별미이다. 국산 팥을 직접 삶아 만드는 단팥라떼는 부드럽고 고소한 데다 여운처럼 남는 은은한 단맛이 일품이며, 떡을 살짝 구워 볶은 콩가루를 듬뿍 뿌려 내는 찰떡구이는 살짝 허기진 속을 든든하게 만들어준다. 사장 내외는 카페 외에 유기농 인증을 받은 감귤 농장도 운영 중이다. 때문에 직접 운영하는 농장의 품질 좋은 감귤로 만드는 감귤 재료 음료들도 인기가 좋다.');

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(2, 2, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/제주허브동산.jpg', '제주허브동산',
 '2000년 부지매입을 시작으로 약 5년간 59,504m²(18,000평)의 대지 위에 허브동산을 만들어왔다. 현재 약 180여종의 허브와 우리산하의 야생화로 채워진 각양각색의 정원들과 작은 동산들, 그리고 611.6m²(2,000평)의 체험 감귤농장 등 다양한 형태의 테마공원이 조성되어 있다. 또한 허브동산을 휘어감은 산책로, 허브관련 제품을 구입할 수 있는 허브샵, 허브를 이용한 다양한 퓨전 음식을 맛볼 수 있는 카페, 허브에 대한 지식과 정보를 공유하고 더욱 다양한 체험을 할 수 있는 허브체험관 등의 시설이 구비되어 있다.');
 
INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(3, 2, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/제주민속촌박물관.bmp', '제주민속촌박물관',
 '제주민속촌박물관은 조선말인 1890년대를 기준 연대로 삼아 제주도 전래의 민속자료를 총체적으로 정리하여 전시하고 있다. 특히, 100여 채에 달하는 전통 가옥은 비슷한 모습으로 꾸며서 만든것이 아니라, 실제로 제주도민이 생활하던 집을 돌 하나 기둥 하나에 이르기까지 그대로 옮겨와 거의 완벽하게 복원해 놓은 것이다. 이 전통가옥에는 생활용구, 농기구, 어구, 가구, 석물등 약 8천여 점의 민속자료가 전시되어 있다.'); 

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(4, 2, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/제주돌토고리카페.jpg', '제주돌토고리카페',
 '표선해비치해변, 표선 포구 바로 뒤편에 위치한 디저트와 족욕을 즐길 수 있는 돌토고리카페는 검은 현무암으로 만든 이색적인 족욕통과 직접 만드는 젤라또, 빵이 인기 있는 따뜻한 공간이다. 특히 이색적인 빵이 인기가 좋은데, 맛도 맛이지만 다른 베이커리에는 없는 이 집만의 독특함이 있기 때문이다. 오징어와 한치, 문어, 소라를 넣어 만든 해물빵은 돌토고리를 대표하는 인기 빵이다. 겉은 특별할 게 없지만 속에 가득 박혀 있는 해산물들이 여느 빵과는 다른 특별함을 만들어 준다. 폭신한 빵의 식감과 잘게 썰어넣은 해산물이 꽤나 잘 어울린다. 카페 2층은 족욕 체험장으로 꾸며져 있다. 디저트와 함께 족욕을 즐기고 싶다면, 1층에서 미리 빵과 음료를 주문하면 족욕 테이블로 가져다준다. 개인 족욕통마다 음료 등을 올려둘 수 있는 테이블이 있어 편하다.'); 

-- 제주 3코스의 코스 안내
INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(1, 3, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/산방산.jpg', '산방산',
 '제주도 서남부의 평야지대에 우뚝 서 있어 어디에서도 조망이 가능한 종 모양의 종상화산체다. 용암돔 남측 절벽의 높이 150~300m 사이에는 다양한 모양과 크기의 풍화혈과 애추가 발달되어 있고, 해발 150m쯤에 길이 약 10m, 너비와 높이가 약 5m인 산방굴이라고 하는 해식동굴이 바다를 향해 특색있는 경관을 이루어 있어 영주십경의 하나이다.');

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(2, 3, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/용머리해안.jpg', '용머리해안',
 '산방산 앞자락에 있는 바닷가로 산방산 휴게소에서 10여분 걸어내려가면 수려한 해안절경의 용머리 해안과 마주치게 된다. 이 곳은 수천만년 동안 쌓이고 쌓여 이루어진 사암층 중 하나이다.');

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(3, 3, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/사계해변.jpg', '사계해변',
 '사계해변은 산방산 바로 아래쪽에 자리한 해변으로 한적하고 조용한 것이 특징이다. 이곳에서는 형제섬, 산방산과 한라산, 용머리해안까지 조망이 가능하다. 깨끗한 모래와 푸른 바다가 어우러져 아름답다. 사계해변 인근 사계포구는 낚시 포인트로 낚시꾼들의 발길이 끊이지 않는다. 자연적으로 형성된 화산석이 둘러싸고 있는 모습의 사계해안은 제주 올레길 10코스에 해당되어 탐방객들이 늘고있다. 사계해변 인근에는 천연기념물로 지정되어 있는 사계발자국화석발간지를 만나볼 수 있다.');

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(4, 3, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/사계 발자국화석 발견지.jpg', '사계 발자국화석 발견지',
 '천연기념물 제464호로 지정되어 있는 발자국 화석 공원으로 구석기 시대에 생성되었다고 추정되고 있다. 사람, 새, 코끼리 등 사람과 동물, 식물 화석 등이 새겨져 볼만하다. 지질이 독특하고 모양 또한 화성에 온 듯한 착각이 들 정도로 화려해 감상하기 좋다.');

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(5, 3, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/섯알오름.jpg', '섯알오름',
 '송악산 북쪽에 있는 섯알오름은 작고 나지막한 3개의 말굽형 분화구가 나란히 줄지어 분포되어 있는 곳이다. 높이 약 21m, 둘레 704m, 총면적 29,094㎢인 섯알오름은 아담한 동산과 같은 느낌이지만 이곳은 양민학살터로 아픔이 있는 4.3유적지이기도 하다. 입구에는 학살된 주민들의 추모비가 있으며 꼭대기에는 일제강점기에 설치한 고사포 진지가 있어 한국 근대사의 비극을 전해준다.');

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(6, 3, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/송악산.jpg', '송악산',
 '송악산은 한라산처럼 웅장하거나 산방산처럼 경치가 빼어나지는 않다. 그러나 송악산 정상에 오르면 누구나 감탄사를 토해낸다. 앞으로 가까이 보이는 최남단의 마라도와 가파도, 형제섬, 우뚝 솟은 산방산, 멀리 보이는 한라산, 그리고 끝없는 태평양, 바다를 씻겨온 바람과 능선에 이어지는 푸른 잔디의 풋풋한 감촉 때문이다.'); 

-- 제주 4코스의 코스 안내
INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(1, 4, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/산방산.jpg', '산방산',
 '제주도 서남부의 평야지대에 우뚝 서 있어 어디에서도 조망이 가능한 종 모양의 종상화산체다. 용암돔 남측 절벽의 높이 150~300m 사이에는 다양한 모양과 크기의 풍화혈과 애추가 발달되어 있고, 해발 150m쯤에 길이 약 10m, 너비와 높이가 약 5m인 산방굴이라고 하는 해식동굴이 바다를 향해 특색있는 경관을 이루어 있어 영주십경의 하나이다.');

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(2, 4, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/용머리해안.jpg', '용머리해안',
 '산방산 앞자락에 있는 바닷가로 산방산 휴게소에서 10여분 걸어내려가면 수려한 해안절경의 용머리 해안과 마주치게 된다. 이 곳은 수천만년 동안 쌓이고 쌓여 이루어진 사암층 중 하나이다.');

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(3, 4, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/진미식당.jpg', '진미식당',
 '24년 전통의 진미식당은 3대 째 운영되고 있는 전통있는 명가이며, 다금바리회를 대중화를 시킨 곳이 바로 이곳이다. 진미식당 사장님은 다금바리에 대한 특허만 여러 개를 보유하고 있으며, 다금바리에 대한 사랑이 남다르신 분이다. 다금바리회의 진정한 맛을 보려면, 이곳 진미식당을 찾는다면 후회는 없을 듯하다.');

INSERT INTO travel_CourseInfo_tbl(tr_Course_subId, tr_course_id, tr_course_locationImage, tr_course_location, tr_course_locationContent)
 VALUES(4, 4, '/travel_planner/resources/images/recommendCourse/course_detail/jejuCourse/송악산.jpg', '송악산',
 '송악산은 한라산처럼 웅장하거나 산방산처럼 경치가 빼어나지는 않다. 그러나 송악산 정상에 오르면 누구나 감탄사를 토해낸다. 앞으로 가까이 보이는 최남단의 마라도와 가파도, 형제섬, 우뚝 솟은 산방산, 멀리 보이는 한라산, 그리고 끝없는 태평양, 바다를 씻겨온 바람과 능선에 이어지는 푸른 잔디의 풋풋한 감촉 때문이다.'); 

COMMIT;

SELECT *
FROM travel_CourseInfo_tbl;

-- 추천코스 목록 조회
SELECT *
FROM travel_recommendCourse_tbl
WHERE tr_area_id = 1;

-- 추천코스 안내 조회
SELECT a.tr_area_id
	 , r.tr_area_id
	 , r.tr_course_id
	 , s.tr_course_id
	 , s.tr_Course_subId
	 , s.tr_course_locationImage	 
	 , s.tr_course_location
	 , s.tr_course_locationContent
  FROM travel_recommendCourse_tbl r
	 , travel_CourseInfo_tbl s
	 , travel_area_tbl a
 WHERE a.tr_area_id = r.tr_area_id  
   AND r.tr_course_id = s.tr_course_id
   AND r.tr_course_id = 1
   ORDER BY s.tr_Course_subId; 