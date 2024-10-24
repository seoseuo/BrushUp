-- 사원들의 입사일에서 입사년도와 월만 출력하기
SELECT ENAME, HIREDATE,
    TO_CHAR(HIREDATE, 'YY-MM')
FROM EMP;

-- 사원들의 입사일을 출력하되 요일까지 출력하기
SELECT ENAME, HIREDATE,
    TO_CHAR(HIREDATE, 'YYYY/MM/DD DAY')
FROM EMP;

-- 현재 날짜와 시간 출력하기
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD, HH24:MI:SS')
FROM DUAL;

-- 급여를 출력하면서 통화 기호 덧붙이기
SELECT ENAME, TO_CHAR(SAL, 'L999,999')
FROM EMP;

-- Q1. 1981년 2월 20일에 입사한 사원 출력하기
SELECT *
FROM EMP
WHERE HIREDATE = TO_DATE('1981/02/20', 'YYYY/MM/DD');

SELECT *
FROM EMP
WHERE HIREDATE = TO_DATE('1981-02-20', 'YYYY-MM-DD');

SELECT HIREDATE
FROM EMP
WHERE HIREDATE = TO_DATE('20-02-1981', 'DD-MM-YYYY');

SELECT *
FROM EMP
WHERE (HIREDATE - TO_DATE('1981-02-20', 'YYYY-MM-DD')) = 0;

SELECT *
FROM EMP
WHERE HIREDATE = TO_DATE('19810220', 'YYYYMMDD');


-- 숫자 형태의 문자 빼기
SELECT '100,000' - '50,000'
FROM DUAL;

-- 수치 형태로 변환한 후 빼기
SELECT TO_NUMBER('100,000','999,999') 
    - TO_NUMBER('50,000','999,999')
FROM DUAL;

-- Q2. DECODE 함수를 사용하여 사원의 부서번호로 부서이름 설정하기
-- 10: ACCOUNTING
-- 20: RESEARCH
-- 30: SALES
-- 40: OPERATIONS
-- 그외: DEFAULT

SELECT EMPNO, ENAME, DEPTNO,
    DECODE(DEPTNO, 
        10, 'ACCOUNTING', 
        20, 'RESEARCH', 
        30, 'SALES', 
        40, 'OPERATIONS', 
        'DEFAULT') AS DEPT_NAME
FROM EMP;

SELECT EMPNO, ENAME, DEPTNO,
    DECODE(DEPTNO, 
        10, 'ACCOUNTING', 
        20, 'RESEARCH', 
        30, 'SALES', 
        40, 'OPERATIONS', 
        'DEFAULT') AS DNAME
FROM EMP;

-- Q3. CASE 함수를 사용하여 사원의 부서번호로 부서이름 설정하기
-- 10: ACCOUNTING
-- 20: RESEARCH
-- 30: SALES
-- 40: OPERATIONS
-- 그외: DEFAULT

SELECT EMPNO, ENAME, DEPTNO,
    CASE DEPTNO
        WHEN 10 THEN 'ACCOUNTING'
        WHEN 20 THEN 'RESEARCH'
        WHEN 30 THEN 'SALES'
        WHEN 40 THEN 'OPERATIONS'
        ELSE 'DEFAULT'
    END AS DNAME
FROM EMP;

SELECT EMPNO, ENAME, DEPTNO,
    CASE DEPTNO
        WHEN 10 THEN 'ACCOUNTING'
        WHEN 20 THEN 'RESEARCH'
        WHEN 30 THEN 'SALES'
        WHEN 40 THEN 'OPERATIONS'
        ELSE 'DEFAULT'
    END AS DEPTNAME
FROM EMP;

SELECT EMPNO, ENAME, DEPTNO,
    CASE DEPTNO
        WHEN 10 THEN 'ACCOUNTING'
        WHEN 20 THEN 'RESEARCH'
        WHEN 30 THEN 'SALES'
        WHEN 40 THEN 'OPERATIONS'
        ELSE 'DEFAULT'
    END AS DEPT_NAME
FROM EMP;

SELECT EMPNO, ENAME, DEPTNO,
    CASE DEPTNO
        WHEN 10 THEN 'ACCOUNTING'
        WHEN 20 THEN 'RESEARCH'
        WHEN 30 THEN 'SALES'
        WHEN 40 THEN 'OPERATIONS'
        ELSE 'DEFAULT'
    END AS D_NAME
FROM EMP;

SELECT EMPNO, ENAME, DEPTNO,
    CASE DEPTNO
        WHEN 10 THEN 'ACCOUNTING'
        WHEN 20 THEN 'RESESRCH'
        WHEN 30 THEN 'SALES'
        WHEN 40 THEN 'OPERATIONS'
        ELSE 'DEFAULT'
    END AS DEPARTMENT_NAME
FROM EMP;

-- Q4. 사원들의 급여 총액, 평균액, 최고액, 최소액을 출력하기
-- 별칭: 급여총액, 급여평균, 최대급여, 최소급여 

SELECT SUM(SAL) 급여총액,
    AVG(SAL) "급여평균",
    MAX(SAL) AS 최대급여,
    MIN(SAL) AS "최소급여"
FROM EMP;

SELECT SUM(SAL) AS 급여총액,
       AVG(SAL) AS 급여평균,
       MAX(SAL) AS 최대급여,
       MIN(SAL) AS 최소급여
FROM EMP;

-- Q5. 최근에 입사한 사원과 가장 오래전에 입사한 사원의 입사일 출력하기
SELECT 
    MAX(HIREDATE),
    MIN(HIREDATE)
FROM EMP;

SELECT MAX(HIREDATE) AS YOUNGER,
    MIN(HIREDATE) AS ELDER
FROM EMP;

SELECT 
    MAX(HIREDATE) AS 최근입사일,
    MIN(HIREDATE) AS 가장오래된입사일
FROM EMP;

SELECT 
    MAX(HIREDATE) AS "최근 입사일",
    MIN(HIREDATE) AS "가장 오래된 입사일"
FROM EMP;

-- 사원들의 커미션 총액을 출력하기
SELECT SUM(COMM) AS "커미션 총액"
FROM EMP;

-- 전체 사원의 수 출력하기
SELECT COUNT(*) AS "사원의 수"
FROM EMP;

-- EMP 테이블의 내용 출력하기
SELECT *
FROM EMP;

-- 커미션을 받는 사원의 수 출력하기
SELECT COUNT(COMM) AS "커미션을 받는 사원 수"
FROM EMP;

-- 커미션을 받는 사원의 수 출력하기
SELECT COUNT(*) AS "커미션을 받는 사원 수"
FROM EMP
WHERE COMM IS NOT NULL;

-- 직업의 종류 출력하기
SELECT JOB
FROM EMP
ORDER BY JOB;

-- 직업의 개수 출력하기
SELECT COUNT(JOB) AS "직업의 개수"
FROM EMP;

-- 직업 종류의 개수 출력하기
SELECT COUNT(DISTINCT JOB) AS "직업 종류의 개수"
FROM EMP;

-- 그룹함수를 사용시 주의할 점
SELECT ENAME, MAX(SAL)
FROM EMP;

-- 집합 연산자를 사용하여 각 부서별 평균 급여 출력하기
SELECT AVG(SAL), '10' AS DEPTNO
FROM EMP
WHERE DEPTNO = 10
UNION ALL
SELECT AVG(SAL), '20' AS DEPTNO
FROM EMP
WHERE DEPTNO = 20
UNION ALL
SELECT AVG(SAL), '30' AS DEPTNO
FROM EMP
WHERE DEPTNO = 30;

-- GROUP BY절을 사용하여 부서별 평균 급여 출력하기
SELECT AVG(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO;

-- 부서 번호 및 직책별 평균 급여로 정렬하기
SELECT DEPTNO, JOB, AVG(SAL) 
FROM EMP
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

-- GROUP BY절을 사용시 주의할 점
SELECT ENAME, DEPTNO, AVG(SAL) 
FROM EMP
GROUP BY DEPTNO;

-- 각 부서의 직책별 평균 급여를 구하되, 그 평균 급여가 2000 이상인 그룹만 출력하기
SELECT DEPTNO, JOB, AVG(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
HAVING AVG(SAL) >= 2000
ORDER BY DEPTNO, JOB;

-- HAVING 절을 사용하지 않을 경우
SELECT DEPTNO, JOB, AVG(SAL)
FROM EMP
WHERE AVG(SAL) >= 2000
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

-- HAVING절만 사용한 경우
SELECT DEPTNO, JOB, AVG(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
HAVING AVG(SAL) >= 2000
ORDER BY DEPTNO, JOB;

-- WHERE절과 HAVING절을 사용한 경우
SELECT DEPTNO, JOB, AVG(SAL)
FROM EMP
WHERE SAL <= 3000
GROUP BY DEPTNO, JOB
HAVING AVG(SAL) >= 2000
ORDER BY DEPTNO, JOB;

-- GROUP BY 절만 사용한 그룹화
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), MIN(SAL), SUM(SAL), AVG(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

-- ROLLUP 함수를 적용한 그룹화
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), MIN(SAL), SUM(SAL), AVG(SAL)
FROM EMP
GROUP BY ROLLUP(DEPTNO, JOB);

-- CUBE 함수를 적용한 그룹화
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), MIN(SAL), SUM(SAL), AVG(SAL)
FROM EMP
GROUP BY CUBE(DEPTNO, JOB)
ORDER BY DEPTNO, JOB;

-- DEPTNO를 먼저 그룹화한 후 ROLLUP 함수에 JOB 지정하기
SELECT DEPTNO, JOB, COUNT(*)
FROM EMP
GROUP BY DEPTNO, ROLLUP(JOB);

-- JOB를 먼저 그룹화한 후 ROLLUP 함수에 DEPTNO 지정하기
SELECT DEPTNO, JOB, COUNT(*)
FROM EMP
GROUP BY JOB, ROLLUP(DEPTNO);

-- 열별로 그룹으로 묶어 출력하기
SELECT DEPTNO, JOB, COUNT(*)
FROM EMP
GROUP BY GROUPING SETS(DEPTNO, JOB)
ORDER BY DEPTNO, JOB;

-- DEPTNO, JOB열의 그룹화 결과 여부를 GROUPING 함수로 확인하기
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), AVG(SAL),
    GROUPING(DEPTNO),
    GROUPING(JOB)
FROM EMP
GROUP BY CUBE(DEPTNO, JOB)
ORDER BY DEPTNO, JOB;

-- 10번 부서에 속한 사원 이름 구하기
SELECT ENAME
FROM EMP
WHERE DEPTNO = 10;

-- GROUP BY절로 그룹화하여 부서 번호와 사원 이름 출력하기
SELECT DEPTNO, ENAME
FROM EMP
GROUP BY DEPTNO, ENAME;

-- 부서별 사원 이름을 나란히 나열하여 출력하기
SELECT DEPTNO,
    LISTAGG(ENAME, ', ')
    WITHIN GROUP(ORDER BY SAL DESC) AS ENAMES
FROM EMP
GROUP BY DEPTNO;

-- 부서별,직책별로 그룹화하여 최고 급여 데이터 출력하기
SELECT DEPTNO, JOB, MAX(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

-- PIVOT 함수 사용하여 직책별,부서별 최고 급여를 2차원 표 형태로 출력하기
SELECT *
FROM ( SELECT DEPTNO, JOB, SAL FROM EMP )
PIVOT(
    MAX(SAL)
    FOR DEPTNO IN (10,20,30)
)
ORDER BY JOB;

-- PIVOT 함수 사용하여 부서별, 직책별 최고 급여를 2차원 표 형태로 출력하기
SELECT *
FROM ( SELECT JOB, DEPTNO, SAL FROM EMP )
PIVOT(
    MAX(SAL)
    FOR JOB IN (
        'CLERK' AS CLERK,
        'SALESMAN' AS SALESMAN,
        'PRISIDENT' AS PRISIDENT,
        'MANAGER' AS MANAGER,
        'ANALYST' AS ANALYST
    )
)
ORDER BY DEPTNO;

-- FROM 절에 여러 테이블 선언하기
SELECT *
FROM EMP, DEPT
ORDER BY EMPNO;


-- 열 이름을 비교하는 조건식으로 조인하기
SELECT *
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
ORDER BY EMPNO;

-- 테이블 이름을 별칭으로 표현하기
SELECT *
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
ORDER BY EMPNO;

-- 두 테이블에 부서 번호가 똑같은 열 이름으로 포함되어 있을 때
SELECT EMPNO, ENAME, DEPTNO, DNAME, LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;

-- 열 이름에 각각의 테이블 이름도 함께 명시할 때
SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
ORDER BY D.DEPTNO, E.EMPNO;

-- 사원번호, 이름, 급여, 근무 부서 정보를 함께 출력하되, 급여가 3000인 이상인 데이터 출력하기
SELECT E.EMPNO, E.ENAME, E.SAL, D.DEPTNO, D.DNAME, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
    AND E.SAL >= 3000;

-- 급여 범위를 지정하는 조건식으로 조인하기
SELECT *
FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;

-- 같은 테이블을 두 번 사용하여 자체 조인하기
SELECT E1.EMPNO, E1.ENAME, E1.MGR,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM EMP E1, EMP E2
WHERE  E1.MGR = E2.EMPNO;

-- 데이터 변경하기
UPDATE EMP
SET MGR = 7902
WHERE EMPNO = 7369;

-- 영구 저장하기
COMMIT;

-- 왼쪽 외부 조인 사용하기
SELECT E1.EMPNO, E1.ENAME, E1.MGR,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM EMP E1, EMP E2
WHERE  E1.MGR = E2.EMPNO(+)
ORDER BY E1.EMPNO;

-- 오른쪽 외부 조인 사용하기
SELECT E1.EMPNO, E1.ENAME, E1.MGR,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM EMP E1, EMP E2
WHERE  E1.MGR(+) = E2.EMPNO
ORDER BY E1.EMPNO;

-- NATURAL JOIN을 사용하여 조인하기
SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, E.HIREDATE, E.SAL, E.COMM,
    DEPTNO, D.DNAME, D.LOC
FROM EMP E NATURAL JOIN DEPT D
ORDER BY DEPTNO, E.EMPNO;

-- JOIN ~ USING을 사용하여 조인하기
SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, E.HIREDATE, E.SAL, E.COMM,
    DEPTNO, D.DNAME, D.LOC
FROM EMP E JOIN DEPT D USING(DEPTNO)
ORDER BY DEPTNO, E.EMPNO;

-- JOIN ~ ON으로 등가 조인하기
SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, E.HIREDATE, E.SAL, E.COMM,
    E.DEPTNO, 
    D.DNAME, D.LOC
FROM EMP E JOIN DEPT D ON(E.DEPTNO = D.DEPTNO)
WHERE SAL <= 3000
ORDER BY DEPTNO, E.EMPNO;

-- 왼쪽 외부 조인을 SQL-99 사용하기
SELECT E1.EMPNO, E1.ENAME, E1.MGR,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM EMP E1 LEFT OUTER JOIN EMP E2 ON(E1.MGR = E2.EMPNO)
ORDER BY E1.EMPNO;


-- 오른쪽 외부 조인을 SQL-99 사용하기
SELECT E1.EMPNO, E1.ENAME, E1.MGR,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM EMP E1 RIGHT OUTER JOIN EMP E2 ON (E1.MGR = E2.EMPNO)
ORDER BY E1.EMPNO;

-- 전체 외부 조인을 SQL-99 사용하기
SELECT E1.EMPNO, E1.ENAME, E1.MGR,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM EMP E1 FULL OUTER JOIN EMP E2 ON(E1.MGR = E2.EMPNO)
ORDER BY E1.EMPNO;

-- 사원 이름이 JONES인 사원의 급여 출력하기
SELECT SAL
FROM EMP
WHERE ENAME = 'JONES';

-- 급여가 2975보다 높은 사원 정보 출력하기
SELECT *
FROM EMP
WHERE SAL > 2975;

-- 서브쿼리로 JONES의 급여보다 높은 급여를 받는 사원 정보 출력하기
SELECT *
FROM EMP
WHERE SAL > (
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'JONES'
);

-- EMP 테이블에서 SCOTT보다 빨리 입사한 사원 목록 출력하기
SELECT HIREDATE
FROM EMP
WHERE ENAME = 'SCOTT';

SELECT *
FROM EMP
WHERE HIREDATE < '87/07/13';


SELECT *
FROM EMP
WHERE HIREDATE < (
    SELECT HIREDATE
    FROM EMP
    WHERE ENAME = 'SCOTT'
);

-- 20번 부서에 속한 사원 중 전체 사원의 평균 급여보다 높은 급여를 받는 사원 정보와 소속 부서 정보를 출력하기
SELECT *
FROM EMP
WHERE DEPTNO = 20;

SELECT AVG(SAL)
FROM EMP;
 -- 2073.214

SELECT *
FROM EMP
WHERE DEPTNO = 20
AND  SAL > 2073;

SELECT *
FROM EMP
WHERE DEPTNO = 20
AND  SAL > (
    SELECT AVG(SAL)
    FROM EMP
);

SELECT E.EMPNO, E.ENAME, E.JOB, E.SAL, D.DEPTNO, D.DNAME, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = 20
    AND E.DEPTNO = D.DEPTNO
    AND  SAL > (
        SELECT AVG(SAL)
        FROM EMP
    );

-- IN 연산자 사용하기
-- 부서 번호가 20이거나 30인 사원의 정보를 출력하기
SELECT *
FROM EMP
WHERE DEPTNO IN (20,30);

-- 각 부서별 최고 급여와 동일한 급여를 받는 사원 정보 출력하기
SELECT MAX(SAL)
FROM EMP
GROUP BY DEPTNO;

SELECT *
FROM EMP
WHERE SAL IN (2850, 3000, 5000);

SELECT *
FROM EMP
WHERE SAL IN (
    SELECT MAX(SAL)
    FROM EMP
    GROUP BY DEPTNO
);

-- ANY 연산자 사용하기
-- 각 부서별 최고 급여와 동일한 급여를 받는 사원 정보 출력하기
SELECT *
FROM EMP
WHERE SAL = ANY(
    SELECT MAX(SAL)
    FROM EMP
    GROUP BY DEPTNO
);

-- SOME 연산자 사용하기
-- 각 부서별 최고 급여와 동일한 급여를 받는 사원 정보 출력하기
SELECT *
FROM EMP
WHERE SAL = SOME(
    SELECT MAX(SAL)
    FROM EMP
    GROUP BY DEPTNO
);

-- 30번 부서 사원들의 최대 급여보다 적은 급여를 받는 사원 정보 출력하기
SELECT SAL
FROM EMP
WHERE DEPTNO = 30
ORDER BY SAL;

SELECT *
FROM EMP
WHERE SAL < ANY (
    SELECT SAL
    FROM EMP
    WHERE DEPTNO = 30
)
ORDER BY SAL, EMPNO;

SELECT *
FROM EMP
WHERE SAL <(
    SELECT MAX(SAL)
    FROM EMP
    WHERE DEPTNO = 30
)
ORDER BY SAL, EMPNO;

-- 30번 부서 사원들의 최소 급여보다 많은 급여를 받는 사원 정보 출력하기
SELECT *
FROM EMP
WHERE SAL > ANY (
    SELECT SAL
    FROM EMP
    WHERE DEPTNO = 30
)
ORDER BY SAL, EMPNO;

SELECT *
FROM EMP
WHERE SAL > (
    SELECT MIN(SAL)
    FROM EMP
    WHERE DEPTNO = 30
)
ORDER BY SAL, EMPNO;

-- 30번 부서 사원들의 최소 급여보다 더 적은 급여를 받는 사원 정보 출력하기
SELECT *
FROM EMP
WHERE SAL < ALL (
    SELECT SAL
    FROM EMP
    WHERE DEPTNO = 30
);

-- 30번 부서 사원들의 최대 급여보다 더 많은 급여를 받는 사원 정보 출력하기
SELECT *
FROM EMP
WHERE SAL > ALL (
    SELECT SAL
    FROM EMP
    WHERE DEPTNO = 30
);
