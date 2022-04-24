#COUNT
SELECT COUNT(*) FROM book;

#20000원 이상인 책의 개수
SELECT COUNT(*) FROM book WHERE price > 20000;

#모든 책 가격의 합
SELECT SUM(price) FROM book;

#최고가
SELECT MAX(price) FROM book;

#최저가 
SELECT MIN(price) FROM book;

#평균 가격
SELECT AVG(price) FROM book;

#GROUP BY 특정 책을 구매한 회원의 수
SELECT bookId,COUNT(custId) FROM Orders GROUP BY bookId;

#HAVING 특정 책 3권 이상 구매한 회원의 수
SELECT bookId,COUNT(custId) FROM Orders GROUP BY bookId HAVING COUNT(custId) >= 3;

