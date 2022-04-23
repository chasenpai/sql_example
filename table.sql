#테이블 생성
CREATE TABLE User(  #생성할 테이블명
	num INT PRIMARY KEY,  #컬럼명 + 자료형 + 옵션
	id VARCHAR(20),
	pwd VARCHAR(20)
);

SELECT * FROM USER;

#    		테이블명    추가할 컬럼
ALTER TABLE USER ADD NAME VARCHAR(20);

#삭제할 테이블 명
DROP TABLE USER;

SHOW TABLES;

SHOW DATABASES;