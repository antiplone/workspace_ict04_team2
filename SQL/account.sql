--- 1. 계정생성 계정 IDENTIFIED BY 비밀번호
CREATE USER ict04_tplanner IDENTIFIED BY ict04 DEFAULT TABLESPACE USERS;

-- 2. 사용자 권한 부여
GRANT CONNECT, RESOURCE TO ict04_tplanner;
GRANT CREATE VIEW TO ict04_tplanner;

-- 3. 락 해제
ALTER USER ict04_tplanner ACCOUNT UNLOCK;
