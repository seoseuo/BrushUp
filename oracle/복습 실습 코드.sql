--125p Q1.

SELECT *
FROM EMP
WHERE ENAME LIKE '%S';

--Q2.

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE JOB = 'SALESMAN';

--03.
-- 집합 연산자를 사용하지 않은 방식
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO IN(20,30) AND SAL>2000;

-- 집합 연산자를 사용한 방식
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 20 AND SAL>2000

UNION

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30 AND SAL>2000;

--Q4.

 SELECT *
 FROM EMP 
 WHERE SAL NOT BETWEEN 2000 AND 3000;

--Q5. 

SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE ENAME LIKE '%E%' 
  AND DEPTNO = 30
  AND SAL NOT BETWEEN 1000 AND 2000;


--Q6

 SELECT *
 FROM EMP
 WHERE COMM IS NULL
 AND MGR IS NOT NULL
 AND JOB IN('MANAGER','CLERK')
 AND ENAME NOT LIKE '_L%';
 
 
 -- TEST ZONE
 
 SELECT JOB, SUBSTR(JOB,1,2), SUBSTR(JOB,3,2), SUBSTR(JOB,5)
FROM EMP;



SELECT *
FROM EMP
WHERE INSTR(ENAME,'S') > 0;

SELECT ROUND(1234.5678) AS ROUND,
    ROUND(1234.5678, 0) AS ROUND_0,
    ROUND(1234.5678, 1) AS ROUND_1,
    ROUND(1234.5678, 2) AS ROUND_2,
    ROUND(1234.5678, -1) AS ROUND_MINUS1,
    ROUND(1234.5678, -2) AS ROUND_MINUS2
FROM DUAL;


SELECT *
FROM EMP
WHERE SAL BETWEEN 1250 AND 1500;

DESC EMP;

SELECT HIREDATE
FROM EMP;


SELECT '100,000' - '50,000'
FROM DUAL;

SELECT SUM(SAL) AS 급여총액,
       AVG(SAL) AS 급여평균,
       MAX(SAL) AS 최대급여,
       MIN(SAL) AS 최소급여
FROM EMP;

SELECT COUNT(*)
FROM EMP;

SELECT JOB
FROM EMP;


SELECT JOB
FROM EMP
ORDER BY JOB;

SELECT COUNT(JOB)
FROM EMP;

SELECT COUNT(DISTINCT JOB) AS "직업 종류의 개수"
FROM EMP;

SELECT ENAME, MAX(SAL)
FROM EMP;

SELECT AVG(SAL), '222' AS DEPTNO
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


SELECT AVG(SAL),DEPTNO
FROM EMP
GROUP BY DEPTNO;


SELECT DEPTNO, JOB, AVG(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;


SELECT DEPTNO, JOB, AVG(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
HAVING AVG(SAL)>=2000;

SELECT DEPTNO, JOB, AVG(SAL)
FROM EMP
WHERE AVG(SAL) >= 2000
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

SELECT ENAME, SAL
FROM EMP
WHERE SAL > AVG(SAL);  -- 오류: 집계 함수는 WHERE 절에서 사용할 수 없음


SELECT DEPTNO,ENAME, AVG(SAL)
FROM EMP
GROUP BY DEPTNO, ENAME;


SELECT DEPTNO,ENAME
FROM EMP
GROUP BY DEPTNO;

SELECT LISTAGG(ENAME, ' ')
WITHIN GROUP(ORDER BY SAL DESC)
FROM EMP;


SELECT E.EMPNO, E.ENAME, E.SAL, D.DEPTNO, D.DNAME, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND E.SAL >= 3000;


SELECT *
FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;


SELECT E1.EMPNO, E1.ENAME, E1.MGR,
E2.EMPNO AS MGR_EMPNO,
E2.ENAME AS MGR_ENAME
FROM EMP E1 LEFT OUTER JOIN EMP E2 ON(E1.MGR=E2.EMPNO)
ORDER BY E1.EMPNO;

SELECT ENAME
FROM EMP
WHERE SAL > ALL (SELECT SAL FROM EMP WHERE DEPTNO = 30);

SELECT ENAME
FROM EMP
WHERE SAL > SOME (SELECT SAL FROM EMP WHERE DEPTNO = 30);

