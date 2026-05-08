# 날짜 : 2026/05/08
# 이름 : 신여진
# 내용 : SQL_연습문제1

# 실습 1-1


# 실습 1-2
CREATE TABLE `Customer` (
    `custId` VARCHAR(10) PRIMARY KEY,
    `name`   VARCHAR(10) NOT NULL,
    `hp`     VARCHAR(13) UNIQUE,
    `addr`   VARCHAR(100),
    `rdate`  DATE NOT NULL
);

CREATE TABLE `Product` (
    `prodNo`   INT PRIMARY KEY,
    `prodName` VARCHAR(10) NOT NULL,
    `stock`    INT DEFAULT 0,
    `price`    INT,
    `company`  VARCHAR(20) NOT NULL
);

CREATE TABLE `Order` (
    `orderNo`      INT AUTO_INCREMENT PRIMARY KEY,
    `orderId`      VARCHAR(10) NOT NULL,
    `orderProduct` INT NOT NULL,
    `orderCount`   INT DEFAULT 1,
    `orderDate`    DATETIME NOT NULL
);

