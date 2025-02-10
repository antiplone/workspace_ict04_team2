-- SYSTEM계정에서 계정 생성
-- 1. 계정생성 : jsp_pj_ict04_ysj 계정생성
-- create user <계정이름> identified by <계정암호> default tablespace users;
CREATE USER ict04_tplanner IDENTIFIED BY ict04 DEFAULT TABLESPACE USERS;

-- 2. 사용자 권한 부여
-- grant [시스템 권한] to [계정];
GRANT CONNECT, RESOURCE, CREATE VIEW TO ict04_tplanner;

-- 3. 락 해제
-- alter user <계정이름> account unlock;
ALTER USER ict04_tplanner ACCOUNT UNLOCK;


-- 4. 계정 잘못만든 경우 계정, 객체 삭제하기 
-- drop user <계정이름> cascade;
--DROP USER ict04_tplanner CASCADE;

-- 5. 패스워드 변경
--alter user <계정이름> identified by <패스워드>;
--alter user jsp_pj_ict04_ysj identified by tiger; 

-----------------------------------------------------------
-- ★여행플래너 계정에서 실행
-- 리뷰글 테이블
DROP TABLE travle_review_tb CASCADE CONSTRAINTS;
CREATE TABLE travle_review_tb(
    r_num       NUMBER(38)  PRIMARY KEY,    -- 리뷰글 번호
    r_title     VARCHAR2(200)   NOT NULL,   -- 리뷰글 제목
    r_content   CLOB			NOT NULL,   -- 리뷰 내용
    r_img       VARCHAR2(100)   NOT NULL,   -- 리뷰 이미지
	m_name	VARCHAR2(38)	NOT NULL,		-- 회원 이름
    r_readCnt   NUMBER(6)		DEFAULT 0,  -- 조회수
    r_regDate   DATE    DEFAULT sysdate,    -- 리뷰 등록일
    r_comment_count NUMBER(6)   DEFAULT 0   -- 댓글 개수
);

-- 테이블 조회
SELECT * FROM travle_review_tb;

-- 삭제시 'N'으로 수정, 리스트에서 'Y'인 것만 조회
-- 게시글의 상태가 Y인 글만 보이도록 설정
ALTER TABLE travle_review_tb
  ADD r_show VARCHAR2(1) default 'Y';

-- 게시글 추가
-- '/travel_planner/resources/images/main/main_review_img1.jpg' => 실제 이미지가 있는 경로
--INSERT INTO review_tbl(reviewNo,reviewImg,reviewTitle,reviewHits,reviewWriter,reviewRegDate)
-- VALUES((SELECT NVL(MAX(reviewNo)+1, 1) FROM review_tbl),'/travel_planner/resources/images/main/main_review_img1.jpg','다대포 꿈의 낙조분수에서 세계 최대, 최고 수준의 음악분수를 즐기고 왔습니다.',2560,'김지연','2025-02-06');
INSERT INTO travle_review_tb(r_num,r_title,r_content,r_img,m_name,r_readCnt,r_regDate)
 VALUES((SELECT NVL(MAX(r_num)+1, 1) FROM travle_review_tb),'다대포 꿈의 낙조분수에서 세계 최대, 최고 수준의 음악분수를 즐기고 왔습니다','야호1','/travel_planner/resources/images/main/main_review_img1.jpg','김지연',2560,'2025-02-06');
INSERT INTO travle_review_tb(r_num,r_title,r_content,r_img,m_name,r_readCnt,r_regDate)
 VALUES((SELECT NVL(MAX(r_num)+1, 1) FROM travle_review_tb),'푸르디 푸른 검은 바닷물이 일렁이는 도시!','야호2','/travel_planner/resources/images/main/main_review_img2.jpg','이지민',1506,'2024-01-26');
INSERT INTO travle_review_tb(r_num,r_title,r_content,r_img,m_name,r_readCnt,r_regDate)
 VALUES((SELECT NVL(MAX(r_num)+1, 1) FROM travle_review_tb),'다대포 꿈의 낙조분수에서 세계 최대, 최고 수준의 음악분수를 즐기고 왔습니다.','야호3','/travel_planner/resources/images/main/main_review_img3.jpg','풀무원',560,'2022-11-05');
INSERT INTO travle_review_tb(r_num,r_title,r_content,r_img,m_name,r_readCnt,r_regDate)
 VALUES((SELECT NVL(MAX(r_num)+1, 1) FROM travle_review_tb),'초등학생 아이와 함께 다녀왔어요. 아이가 정말 행복했다고 다음에 또 오자고 하네요.','야호4','/travel_planner/resources/images/main/main_review_img4.jpg','박연진',450,'2020-01-03');
 
INSERT INTO travle_review_tb(r_num,r_title,r_content,r_img,m_name,r_readCnt,r_regDate)
 VALUES((SELECT NVL(MAX(r_num)+1, 1) FROM travle_review_tb),'푸르디 푸른 검은 바닷물이 일렁이는 도시!','야호5','/travel_planner/resources/images/main/main_review_img4.jpg','유저5',5,'2024-01-26');
INSERT INTO travle_review_tb(r_num,r_title,r_content,r_img,m_name,r_readCnt,r_regDate)
 VALUES((SELECT NVL(MAX(r_num)+1, 1) FROM travle_review_tb),'푸르디 푸른 검은 바닷물이 일렁이는 도시!','야호6','/travel_planner/resources/images/main/main_review_img4.jpg','유저6',6,'2024-01-26');
INSERT INTO travle_review_tb(r_num,r_title,r_content,r_img,m_name,r_readCnt,r_regDate)
 VALUES((SELECT NVL(MAX(r_num)+1, 1) FROM travle_review_tb),'푸르디 푸른 검은 바닷물이 일렁이는 도시!','야호7','/travel_planner/resources/images/main/main_review_img4.jpg','유저7',7,'2024-01-26');
INSERT INTO travle_review_tb(r_num,r_title,r_content,r_img,m_name,r_readCnt,r_regDate)
 VALUES((SELECT NVL(MAX(r_num)+1, 1) FROM travle_review_tb),'푸르디 푸른 검은 바닷물이 일렁이는 도시!','야호8','/travel_planner/resources/images/main/main_review_img4.jpg','유저8',8,'2024-01-26');
COMMIT;

-- 게시글 삭제
DELETE FROM travle_review_tb
 WHERE r_num = 1;
COMMIT;

-- 리뷰 개수
SELECT COUNT(*) FROM travle_review_tb;

-- 조회순으로 게시글 4개만 보여줄거임
SELECT *
  FROM (SELECT R.*
             , rownum AS rn     --행 번호
          FROM (SELECT * FROM travle_review_tb
                 WHERE r_show = 'Y'         -- WHERE절 추가
                 ORDER BY r_readCnt DESC) R   --최신글이 위로 올라오도록
        )
 WHERE rn BETWEEN 1 AND 4;
 