-- 리뷰글 테이블
DROP TABLE travle_review_tbl CASCADE CONSTRAINTS;
CREATE TABLE travle_review_tbl(
    r_num       NUMBER(38)  PRIMARY KEY,    -- 리뷰글 번호
    r_title     VARCHAR2(50)    NOT NULL,   -- 리뷰글 제목
    r_content   CLOB NOT NULL,              -- 리뷰 내용
    r_img       VARCHAR2(100)   NOT NULL,   -- 리뷰 이미지
    r_member    VARCHAR2    NOT NULL,       -- 회원
    r_readCnt   NUMBER(6)   DEFAULT 0,      -- 조회수
    r_regDate   DATE    DEFAULT sysdate,     -- 리뷰 등록일
    r_comment_count NUMBER(6)   DEFAULT 0,   -- 댓글 개수
    r_tourinfo NUMBER(20),
    r_tags  VARCHAR2(4000),
    CONSTRAINT r_email FOREIGN KEY(r_member) REFERENCES travel_member_tbl(m_email)    
);


-- 댓글 테이블
DROP TABLE travle_comment_tbl CASCADE CONSTRAINTS;
CREATE TABLE mvc_comment_tbl(
    c_comment_num   NUMBER(38)  PRIMARY KEY,    -- 댓글 번호
    c_board_num     NUMBER(10)  REFERENCES  travle_review_tbl(r_num),      -- 게시글 번호
    c_member        VARCHAR2(100)    NOT NULL,   -- 댓글 작성자
    c_content       CLOB    NOT NULL,           -- 글내용
    c_regDate       DATE    DEFAULT sysdate     -- 댓글 등록일
);