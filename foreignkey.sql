CREATE TABLE Customer(
	custId INT AUTO_INCREMENT PRIMARY KEY,
	NAME VARCHAR(40),
	address VARCHAR(100),
	phone VARCHAR(20)
);


INSERT INTO Customer VALUES
(custId, '홍길동', '서울 강남구', '010-1111-1111'),
(custId, '이순신', '서울 용산구', '010-2222-2222'),
(custId, '강감찬', '서울 종로구', '010-3333-3333'),
(custId, '김유신', '서울 관악구', '010-4444-4444'),
(custId, '권율', '서울 송파구', '010-5555-5555');


#FOREIGN KEY 사용
CREATE TABLE Orders(
	orderId INT AUTO_INCREMENT PRIMARY KEY,
	custId INT,
	bookId INT,
	orderDate DATETIME,
	#외래키로 지정할 컬럼 + 참조할 테이블의 컬럼
	FOREIGN KEY(custId) REFERENCES customer(custId),
	FOREIGN KEY(bookId) REFERENCES book(bookId)
);


#ALTER TABLE 사용
ALTER TABLE orders ADFOREIGN KEY(custId) REFERENCES customer(custId);



INSERT INTO Orders VALUES
(orderId, 1, 1, NOW()),
(orderId, 1, 3, NOW()),
(orderId, 2, 1, NOW()),
(orderId, 2, 5, NOW()),
(orderId, 3, 4, NOW()),
(orderId, 3, 1, NOW()),
(orderId, 3, 5, NOW()),
(orderId, 1, 2, NOW()),
(orderId, 4, 3, NOW()),
(orderId, 4, 2, NOW()),
(orderId, 4, 5, NOW()),
(orderId, 5, 1, NOW());
