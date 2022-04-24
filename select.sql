#가격이 15000원 이상인 책
SELECT * FROM book WHERE price > 15000;

#가격이 15000원 이상인 책의 제목
SELECT bookName FROM book WHERE price > 15000;

#출판사가 김영사인 책의 제목
SELECT bookName FROM book WHERE publisher = '김영사';
SELECT bookName FROM book WHERE publisher LIKE '%김영사%';

#가격이 15000원 이상이고 출판사가 김영사인 책의 제목
SELECT bookName FROM book WHERE price > 15000 AND publisher = '김영사';

#출판사가 김영사 이거나 문학사상사인 책의 제목
SELECT bookName FROM book WHERE publisher = '김영사' OR publisher = '문학사상사';

#IN & NOT IN
SELECT * FROM book WHERE bookName IN('코스모스');
SELECT * FROM book WHERE bookName NOT IN('코스모스');

#가격이 10000 ~ 20000원 사이의 책의 제목
SELECT bookName FROM book WHERE price BETWEEN(10000)AND(20000);

#중복값 제거
SELECT DISTINCT price FROM book;

#가격과 책이름만 조회
SELECT bookName, price FROM book;

#가격 내림차순으로 조회
SELECT bookName, price FROM book ORDER BY price DESC;

#가격 오름차순으로 조회
SELECT bookName, price FROM book ORDER BY price ASC;

#AS
SELECT bookName AS 책이름 FROM book;


