create table TRAVEL_NOTICE_TABLE(
    notice_num	          NUMBER(4)     NOT NULL PRIMARY KEY,   -- 글번호
    notice_title	      VARCHAR2(50) ,		                -- 글제목
    notice_content        CLOB          NOT NULL,		        -- 글내용
    notice_writer         VARCHAR2(60),                         -- 작성자
    notice_password       VARCHAR2(60)  NOT NULL,               -- 수정, 삭제용 비밀번호
    notice_readCnt        NUMBER(6)     DEFAULT 0,		        -- 조회수
    notice_regDate        DATE          DEFAULT sysdate,	    -- 작성일
    notice_show           VARCHAR2(2)   DEFAULT 'Y',	        -- 글 보이기
    FOREIGN KEY(notice_writer)   REFERENCES travel_member_tbl(m_name)
);	    
    
SELECT * FROM TRAVEL_NOTICE_TABLE;

DROP table TRAVEL_NOTICE_TABLE;

DECLARE -- 선언문
    i   NUMBER:= 1; -- 변수 i에 1을 대입
BEGIN
    WHILE i<=20 LOOP
        INSERT INTO TRAVEL_NOTICE_TABLE(notice_num, notice_title, notice_content, notice_writer, notice_password, notice_readCnt, notice_regDate)
        VALUES(i, '공지사항'||i, '공지내용'||i, '관리자', 'qlqjs'||i, DBMS_RANDOM.VALUE(1,500),sysdate);
        i := i+1;
    END LOOP;
END;
/
COMMIT;

//noticelist            
SELECT notice_num notice_num,
			   notice_title notice_title,
			   notice_content notice_content,
			   notice_writer notice_writer,
			   notice_password notice_password,
			   notice_readCnt notice_readCnt,
			   notice_regDate notice_regDate,
			   notice_show notice_show,
			   rn
		  FROM (SELECT b.*,
		               ROWNUM AS rn
		          FROM (SELECT * 
		                  FROM TRAVEL_NOTICE_TABLE
		                 WHERE notice_show = 'Y'
		                 ORDER BY notice_num DESC) b)
				WHERE rn >= 1 AND rn <= 110;

//password_chk
SELECT COUNT(*) AS CNT FROM TRAVEL_NOTICE_TABLE WHERE notice_num = #{notice_num} AND notice_password = #{notice_password}

//noticeCnt
SELECT COUNT(*) AS cnt FROM TRAVEL_NOTICE_TABLE WHERE notice_show = 'Y'

//plusReadCnt
UPDATE TRAVEL_NOTICE_TABLE 
   SET notice_readCnt = notice_readCnt + 1
 WHERE notice_num = #{notice_num}

//insertNotice
INSERT INTO TRAVEL_NOTICE_TABLE(notice_num, notice_title, notice_content, notice_writer, notice_password, notice_readCnt, notice_regDate)
			VALUES((SELECT NVL(MAX(notice_num)+1, 1) FROM TRAVEL_NOTICE_TABLE), #{notice_title}, #{notice_content}, '작성자111', #{notice_password}, 0, sysdate);

//updateNotice
UPDATE TRAVEL_NOTICE_TABLE SET notice_title = #{notice_title},  notice_content = #{notice_content},  notice_password = #{notice_password} WHERE notice_num = #{notice_num}

//deleteNotice
UPDATE TRAVEL_NOTICE_TABLE SET NOTICE_show='N' WHERE notice_num = #{notice_num}

//for_check
SELECT COUNT(*) AS cnt FROM TRAVEL_NOTICE_TABLE WHERE notice_show = 'Y';

SELECT notice_num noticeNum,
       notice_title noticeTitle,
       notice_content noticeContent,
       notice_writer noticeWriter,
       notice_password noticePassword,
       notice_readCnt noticeReadCnt,
       notice_regDate noticeRegDate,
       notice_show noticeShow,
       rn
  FROM (SELECT b.*,
       ROWNUM AS rn
  FROM (SELECT * 
          FROM TRAVEL_NOTICE_TABLE
         WHERE notice_show = 'Y'
         ORDER BY notice_num DESC) b)
 WHERE  rn >= 1 AND rn <= 110;


SELECT COUNT(*) AS cnt FROM TRAVEL_NOTICE_TABLE WHERE notice_show = 'Y';
