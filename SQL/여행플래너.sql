-- 리뷰글 테이블
DROP TABLE travle_review_tbl CASCADE CONSTRAINTS;
CREATE TABLE travle_review_tbl(
    r_num       NUMBER(38)  PRIMARY KEY,    -- 리뷰글 번호
    r_title     VARCHAR2(200)    NOT NULL,   -- 리뷰글 제목
    r_content   CLOB NOT NULL,              -- 리뷰 내용
    r_img       VARCHAR2(100)   NOT NULL,   -- 리뷰 이미지
    r_readCnt   NUMBER(6)   DEFAULT 0,      -- 조회수
    r_regDate   DATE    DEFAULT sysdate,     -- 리뷰 등록일
    r_comment_count NUMBER(6)   DEFAULT 0,   -- 댓글 개수
--    r_tourinfo NUMBER(20),
--    r_tags  VARCHAR2(4000),
	m_name	VARCHAR2(38)	NOT NULL,		-- 회원 이름
    CONSTRAINT m_name FOREIGN KEY(m_name) REFERENCES travel_member_tbl(m_name)    
);

-- 삭제시 'Y'만 조회
AlTER TABLE travle_review_tbl
  ADD r_show VARCHAR2(1) default 'Y';

-- 조회
SELECT * FROM travle_review_tbl;

-- 후기 목록 조회
SELECT *
  FROM
        (SELECT A.*,
                rownum AS rn
         FROM
                (SELECT * FROM travle_review_tbl
                  WHERE r_show = 'Y'
                  ORDER BY r_num DESC) A
        )
 WHERE rn BETWEEN 1 AND 10;


-- 후기 등록
INSERT INTO travle_review_tbl(r_num, r_title, r_content, r_img, r_readCnt, r_regDate, r_comment_count, m_name)
VALUES((SELECT NVL(MAX(r_num) + 1, 1) FROM travle_review_tbl), '행복했어요!'
    , '아이들과 첫 베트남 여행이였는데 송명근부장님께서 스케쥴도 잘해주시고 설명도 잘해주시고 함께했던 현지가이드 융도 너무너무 좋았어요 아들은 한국와서도 계속 생각날것같다고하더라구요.'
    , '/travel_planner/resources/images/review/review1.jpg', 0, sysdate, 0, '홍길동');
COMMIT;

INSERT INTO travle_review_tbl(r_num, r_title, r_content, r_img, r_readCnt, r_regDate, r_comment_count, m_name)
VALUES((SELECT NVL(MAX(r_num) + 1, 1) FROM travle_review_tbl), '교원투어 발리 제주항공 트라이브호텔 패키지 다녀왔어요'
    , '첫눈폭설로 항공기가 지연되어 출발할수 있을까 걱정하면서 공항에서 7시간을 대기하다 겨우 출발.'
    , '/travel_planner/resources/images/review/review2.jpg', 0, sysdate, 0, '강지원');
COMMIT;

-- 댓글 테이블
DROP TABLE travle_comment_tbl CASCADE CONSTRAINTS;
CREATE TABLE mvc_comment_tbl(
    c_comment_num   NUMBER(38)  PRIMARY KEY,    -- 댓글 번호
    c_board_num     NUMBER(10)  REFERENCES  travle_review_tbl(r_num),      -- 게시글 번호
    c_member        VARCHAR2(100)    NOT NULL,   -- 댓글 작성자
    c_content       CLOB    NOT NULL,           -- 글내용
    c_regDate       DATE    DEFAULT sysdate     -- 댓글 등록일
);