# 날짜 : 2026/05/06
# 이름 : 신여진
# 내용 : 4장 SQL 고급 실습 

# 실습 4-1
CREATE TABLE Employee (
    empno   INT              PRIMARY KEY,    -- 1. 직원번호 (숫자, 제일 중요!)
    name    VARCHAR(10)      NOT NULL,       -- 2. 이름 (글자 10자, 비우기 금지)
    gender  CHAR(1)          NOT NULL,       -- 3. 성별 (글자 1자, 비우기 금지)
    hp      CHAR(13)         UNIQUE NOT NULL,-- 4. 휴대폰 (중복 안됨, 비우기 금지)
    job     VARCHAR(10)      DEFAULT NULL,   -- 5. 직급 (비어있어도 됨)
    depno   INT              DEFAULT NULL,   -- 6. 부서번호 (숫자, 비어있어도 됨)
    regdate DATE             NOT NULL        -- 7. 입사일 (날짜, 비우기 금지)
);
# 실습 4-1
CREATE TABLE Dept (
    depno   INT              PRIMARY KEY,    -- 부서번호 (숫자, PK)
    dname   VARCHAR(10)      NOT NULL,       -- 부서명 (문자열 10자, 비우기 금지)
    tel     VARCHAR(12)      NOT NULL        -- 부서전화번호 (문자열 12자, 비우기 금지)
);
# 실습 4-1
CREATE TABLE Sale (
    no      INT              PRIMARY KEY AUTO_INCREMENT, -- 번호 (PK, 자동으로 1씩 증가)
    empno   VARCHAR(10)      NOT NULL,                   -- 직원번호 (문자열 10자, 비우기 금지)
    year    YEAR             NOT NULL,                   -- 매출연도 (년도 타입, 비우기 금지)
    month   TINYINT              NOT NULL,                   -- 매출월 (숫자, 비우기 금지)
    price   INT              DEFAULT 0 NOT NULL          -- 매출액 (숫자, 기본값 0, 비우기 금지)
);

# 실습 4-2
INSERT INTO Employee (empno, name, gender, hp, job, depno, regdate) VALUES ('1001', '김유신', 'M', '010-1234-1001', '부장', '101', '2026-11-19');
INSERT INTO Employee (empno, name, gender, hp, job, depno, regdate) VALUES ('1002', '김춘추', 'M', '010-1234-1002', '차장', '104', '2026-11-19');
INSERT INTO Employee (empno, name, gender, hp, job, depno, regdate) VALUES ('1003', '장보고', 'M', '010-1234-1003', '사원', 'NULL', '2026-11-19');
INSERT INTO Employee (empno, name, gender, hp, job, depno, regdate) VALUES ('1004', '강감찬', 'M', '010-1234-1004', '대리', '102', '2026-11-19');
INSERT INTO Employee (empno, name, gender, hp, job, depno, regdate) VALUES ('1005', '신사임당', 'F', '010-1234-1005', '과장', '102', '2026-11-19');
INSERT INTO Employee (empno, name, gender, hp, job, depno, regdate) VALUES ('1006', '이황', 'M', '010-1234-1006', '차장', '103', '2026-11-19');
INSERT INTO Employee (empno, name, gender, hp, job, depno, regdate) VALUES ('1007', '이이', 'M', '010-1234-1007', '사원', '105', '2026-11-19');
INSERT INTO Employee (empno, name, gender, hp, job, depno, regdate) VALUES ('1008', '이순신', 'M', '010-1234-1008', 'NULL', 'NULL', '2026-11-19');
INSERT INTO Employee (empno, name, gender, hp, job, depno, regdate) VALUES ('1009', '허난설헌', 'F', '010-1234-1009', '사원', '104', '2026-11-19');
INSERT INTO Employee (empno, name, gender, hp, job, depno, regdate) VALUES ('1010', '정약용', 'M', '010-1234-1010', '대리', '104', '2026-11-19');
SELECT * FROM Employee;

# 실습 4-2
INSERT INTO Dept (depno, name, tel) VALUES ('101', '경영지원부', '051-512-1001')
INSERT INTO Dept (depno, name, tel) VALUES ('102', '영업부', '051-512-1002')
INSERT INTO Dept (depno, name, tel) VALUES ('103', '개발부', '051-512-1003')
INSERT INTO Dept (depno, name, tel) VALUES ('104', '인사부', '051-512-1004')
INSERT INTO Dept (depno, name, tel) VALUES ('105', '기획부', '051-512-1005')
SELECT * FROM Dept;

# 실습 4-2
INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2018, 1,  98100);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2018, 1, 136000);
INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2018, 1,  80000);
INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2018, 1,  78000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2018, 1,  93000);
INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2018, 2,  24000);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2018, 2, 126000);
INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2018, 2,  19000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2018, 2,  19000);
INSERT INTO Sale (empno, year, month, price) VALUES (1006, 2018, 2,  53000);
-- ------------------------------------------------------------------------
INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2019, 1,  24000);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2019, 1, 109000);
INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2019, 1, 101000);
INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2019, 1,  53000);
INSERT INTO Sale (empno, year, month, price) VALUES (1007, 2019, 1,  24000);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2019, 2, 160000);
INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2019, 2, 101000);
INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2019, 2,  43000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2019, 2,  24000);
INSERT INTO Sale (empno, year, month, price) VALUES (1006, 2019, 2, 109000);
-- ------------------------------------------------------------------------
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2020, 1, 201000);
INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2020, 1, 63000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2020, 1, 74000);
INSERT INTO Sale (empno, year, month, price) VALUES (1006, 2020, 1, 122000);
INSERT INTO Sale (empno, year, month, price) VALUES (1007, 2020, 1, 111000);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2020, 2, 120000);
INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2020, 2, 93000);
INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2020, 2, 84000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2020, 2, 180000);
INSERT INTO Sale (empno, year, month, price) VALUES (1008, 2020, 2, 76000);
-- ------------------------------------------------------------------------
INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2021, 1, 56000);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2021, 1, 123000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2021, 1, 91000);
INSERT INTO Sale (empno, year, month, price) VALUES (1007, 2021, 1, 78000);
INSERT INTO Sale (empno, year, month, price) VALUES (1002, 2021, 2, 32000);
INSERT INTO Sale (empno, year, month, price) VALUES (1003, 2021, 2, 148000);
INSERT INTO Sale (empno, year, month, price) VALUES (1004, 2021, 2, 106000);
INSERT INTO Sale (empno, year, month, price) VALUES (1005, 2021, 2, 112000);
INSERT INTO Sale (empno, year, month, price) VALUES (1001, 2021, 3, 47000);
INSERT INTO Sale (empno, year, month, price) VALUES (1006, 2021, 3, 36000);
-- ------------------------------------------------------------------------
SELECT * FROM Sale;

# 실습 4-3
SELECT * FROM Employee WHERE name != '김춘추';
SELECT * FROM Employee WHERE name <> '김춘추'; -- != 연산자와 동일
SELECT * FROM Employee WHERE job = '사원' OR job = '대리';
SELECT * FROM Employee WHERE job IN ('사원', '대리'); -- 위 OR 조건절과 동일
SELECT * FROM Employee WHERE name LIKE '김%'; --% : 와일드카드, 아무 문자열
SELECT * FROM Employee WHERE name LIKE '%신'; -- 이름이 '신'으로 끝나는 직원
SELECT * FROM Employee WHERE name LIKE '이_'; -- 이름이 '이'씨로 시작하는 두글자 직원
SELECT * FROM Employee WHERE job is NULL; -- job이 NULL인 직원

# 실습 4-4
SELECT * FROM Sale ORDER BY price;
SELECT * FROM Sale ORDER BY price ASC;
SELECT * FROM Sale ORDER BY price DESC;
SELECT * FROM Sale Employee ORDER BY name;
SELECT * FROM Sale Employee ORDER BY name DESC;
SELECT * FROM Employee ORDER BY regdate ASC;
SELECT * FROM Sale WHERE price > 50000 ORDER BY price DESC;
SELECT * FROM Sale
WHERE price > 50000
ORDER BY year DESC, month, price DESC;

# 실습 4-5
SELECT * FROM Sale LIMIT 3;
SELECT * FROM Sale LIMIT 0, 3;
SELECT * FROM Sale LIMIT 1, 2;
SELECT * FROM Sale LIMIT 5, 3;
SELECT * FROM Sale ORDER BY price DESC LIMIT 3, 5;
SELECT * FROM Sale WHERE price < 50000 ORDER BY price DESC LIMIT 3;
SELECT * FROM Sale
WHERE price > 50000
ORDER BY year DESC, month, sale DESC
LIMIT 5;

# 실습 4-6
SELECT SUM(price) AS 합계 FROM Sale;
SELECT AVG(price) AS 평균 FROM Sale;
SELECT MAX(price) AS 최대값 FROM Sale;
SELECT MIN(price) AS 최소값 FROM Sale;
SELECT CEILING(1.2);
SELECT CEILING(1.8); -- 울림함수
SELECT FLOOR(1.2);
SELECT FLOOR(1.8); -- 내림함수
SELECT ROUND(1.2);
SELECT ROUND(1.8);
SELECT RAND();     -- 0 ~ 1 사이의 실수
SELECT CEILING(RAND() * 45); -- 1 ~ 45 사이 정수

SELECT * FROM Sale;
UPDATE Sale Set price = NULL WHERE no = 3; 
SELECT COUNT(price) AS 갯수 FROM Sale;
SELECT COUNT(*) AS 튜플갯수 FROM Sale;

SELECT LEFT('Helloworld', 5);
SELECT RIGHT('HelloWorld', 5);
SELECT SUBSTRING('HelloWorld', 6, 5);

SELECT CONCAT('Hello', 'World');
SELECT CONCAT(userid, name, hp) FROM Employee WHERE empno='1008';

SELECT CURDATE();
SELECT CURTIME();  

SELECT NOW();
INSERT INTO Employee SET
empno = '1012',
name = '을지문덕',
gender = 'F',
hp = '010-1234-1012',
regdate = NOW();





