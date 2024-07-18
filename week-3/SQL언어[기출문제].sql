SELECT COUNT(DISTINCT DEPT) FROM STUDENT WHERE DEPT = "컴퓨터과"

SELECT 학번, 이름 FROM 학생 WHERE 학년 IN (3, 4);

CREATE INDEX IDX_NAME ON STUDENT(NAME);

DELETE FROM 학생 WHERE 이름 = "민수";

ALTER TABLE 학생 ADD 주소 VARCHAR(20);

SELECT 학생정보.학번, 학생정보.이름, 학과정보.학과, 학과정보.지도교수
FROM 학생정보 JOIN 학과정보 ON 학생정보.학과 = 학과정보.학과;

UPDATE 회원 SET 전화번호 = "010-14"
WHERE 회원번호 = "N4";

-- 16번 [21년 2회]
SELECT *
FROM 학생
WHERE 이름 LIKE "이%" ORDER BY 이름 DESC;

SELECT NAME, SCORE
FROM 성적
ORDER BY SCORE DESC;

SELECT COUNT(*) CNT FROM SOO CROSS JOIN JEBI
WHERE SOO.NAME LIKE JEBI.RULE;

SELECT COUNT(COL2)
FROM TB
WHERE COL1 IN(2,3) OR COL2 IN(3,5);

SELECT DISTINCT COUNT(부서코드) FROM 직원;

DELETE FROM 부서 WHERE 부서코드 = '20';
SELECT COUNT(DISTINCT 직원코드) FROM 직원;

SELECT 과목이름, MIN(점수) AS 최소점수, MAX(점수) AS 최대점수 FROM 성적
GROUP BY 과목이름
HAVING AVG(점수) >= 90;

SELECT 학과, COUNT(학과) AS '학과별튜플수' FROM 학생
GROUP BY 학과;

SELECT 학과, COUNT(*) AS '학과별튜플수' FROM 학생
GROUP BY 학과;

CREATE INDEX 사번인덱스 ON 사원(사번);

CREATE TABLE 사람
(
    이름 VARCHAR(10),
    성별 CHAR(1) CHECK(성별 IN ('M', 'F')),
);

ALTER TABLE 사원 ADD 전화번호 VARCHAR(11);

CREATE VIEW 사원뷰 AS
SELECT 사번, 이름 FROM 사원 WHERE 성별 = 'M';

SELECT DISTINCT 전공 FROM 학생;

SELECT 학번 FROM 학생 WHERE 이름 LIKE '이%';

SELECT 주소 FROM 학생 WHERE 주소 IS NOT NULL;

SELECT * FROM 교수 WHERE 전공 IN ('컴퓨터공학', '전자공학');

SELECT 이름 FROM 고객 WHERE 나이 BETWEEN 50 AND 59 AND 성별 = '남';

SELECT * FROM 성적 ORDER BY 성적 DESC;

