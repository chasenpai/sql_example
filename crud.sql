#테이블 생성
CREATE TABLE Book (  #생성할 테이블명
	bookId INT PRIMARY KEY,  #컬럼명 + 자료형 + 옵션
	bookName VARCHAR(40),
	publisher VARCHAR(40),
	price INT
);

#조회(select)
SELECT * FROM Book;


#입력(insert)
#         테이블명			각 컬럼에 추가할 값 
INSERT INTO Book VALUES (1, '코스모스', '사이언스 북스', 16000);

INSERT INTO Book VALUES 
(2, '사피엔스', '김영사', 22000),
(3, '총 균 쇠', '문학사상사', 31500),
(4, '정의란 무엇인가', '와이즈베리', 13500),
(5, '자유론', '현대지성', 7700);

INSERT INTO book (bookId ,bookName) VALUES (6, '거의 모든 것의 역사');


#수정(update)
#    테이블명   컬럼명   값  조건식 컬럼명  값
UPDATE Book SET price = 7900 WHERE bookId = 5;


#삭제(delete)
#       테이블명 조건식 컬럼명 값
DELETE FROM book WHERE bookId = 1;