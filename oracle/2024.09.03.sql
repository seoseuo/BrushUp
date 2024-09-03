-- 5장연습문제
-- Q5-2. EMP 테이블을 사용하여 30번 부서에서 근무하고 있는 
-- 사원 중에 직책이 SALESMAN인 사원의 사원번호, 이름, 직책, 급여, 
-- 부서 번호를 출력하기

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30 AND JOB = 'SALESMAN';

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30
AND JOB = 'SALESMAN';

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30
    AND JOB = 'SALESMAN';
    
select empno,ename,job,sal,deptno from emp where deptno =30 and job='SALESMAN';

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30 AND JOB = 'SALESMAN'
ORDER BY EMPNO;

SELECT
    EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE
    DEPTNO = 30
    AND JOB = 'SALESMAN'
ORDER BY EMPNO;

SELECT EMPNO, ENAME, JOB, SAL,DEPTNO
FROM EMP
WHERE DEPTNO=30
AND JOB='SALESMAN';

--Q5-3. EMP 테이블을 사용하여 20번, 30번 부서에 근무하고 있는 사원 중
--  급여가 2000 초과인 사원을 두 가지 방식의 SELECET문을 사용하여
-- 사원번호, 이름, 급여, 부서번호를 출력하기
-- 1) 집합 연산자를 사용하지 않은 방식
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE (DEPTNO = 30 OR DEPTNO = 20) AND SAL > 2000;

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO IN (20, 30) AND SAL > 2000;

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO IN (20, 30)
    AND SAL > 2000;

select empno,ename,job,sal,deptno from emp 
where (deptno = 20 or deptno = 30) and sal > 2000;

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE (DEPTNO = 20 OR DEPTNO = 30)
  AND SAL > 2000;
  
SELECT 
    EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE
    DEPTNO IN (20, 30)
    AND SAL > 2000
ORDER BY EMPNO;

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO IN (20, 30) AND SAL > 2000
ORDER BY EMPNO;

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE SAL > 2000
AND NOT DEPTNO = 10;

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE SAL > 2000
AND DEPTNO IN (20, 30);

select empno, ename, sal, deptno
from emp
where (deptno = 20
    or deptno = 30)
    and sal > 2000;
    
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO  IN(20,30)  AND SAL >2000;


-- 2) 집합 연산자를 사용한 방식
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30 AND SAL > 2000
UNION
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 20 AND SAL > 2000;

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO IN (20, 30)
INTERSECT
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE SAL > 2000;

SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 20
    AND SAL > 2000
UNION
SELECT EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30
    AND SAL > 2000;
    
select empno,ename,job,sal,deptno from emp 
where deptno in (20,30) 
intersect
select empno,ename,job,sal,deptno from emp 
where sal > 2000;    

SELECT
    EMPNO, ENAME, JOB, SAL, DEPTNO
FROM EMP 
WHERE           
    DEPTNO = 20
    AND SAL > 2000
UNION
SELECT
     EMPNO, ENAME, JOB, SAL, DEPTNO
 FROM EMP 
 WHERE 
      DEPTNO = 30
      AND SAL > 2000;

SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 20
AND SAL > 2000
UNION
SELECT EMPNO, ENAME, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30
AND SAL > 2000;

select empno, ename, sal, deptno
from emp
where deptno = 20
    and sal > 2000
union
select empno, ename, sal, deptno
from emp
where  deptno = 30
    and sal > 2000;
    
select empno, ename, sal, deptno
from emp
where (deptno = 20
    or deptno = 30)
intersect
select empno, ename, sal, deptno
from emp
where sal > 2000;

SELECT EMPNO, ENAME, JOB , SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 20
UNION
SELECT EMPNO, ENAME, JOB , SAL,  DEPTNO
FROM EMP
WHERE DEPTNO = 30
INTERSECT
SELECT EMPNO, ENAME, JOB , SAL, DEPTNO
FROM EMP
WHERE SAL  > 2000;


-- Q5-4. NOT BETWEEN A AND B 연산자를 쓰지 않고, 급여 열 값이 2000이상 30000이하 범위 이외의
-- 값을 가진 데이터말 출력하기

SELECT *
FROM EMP
WHERE SAL < 2000 OR SAL > 3000;

SELECT *
FROM EMP
WHERE SAL < 2000
UNION
SELECT *
FROM EMP
WHERE SAL > 3000;

SELECT *
FROM EMP
WHERE NOT SAL >= 2000
    OR NOT SAL <= 3000;
    
SELECT EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE SAL <2000 OR SAL > 3000;

select * from emp where sal <2000 or sal >3000;

SELECT *
FROM EMP
WHERE NOT (SAL >= 2000 AND SAL <= 3000)
ORDER BY EMPNO;

SELECT *
FROM EMP
WHERE SAL < 2000 OR SAL > 3000
ORDER BY EMPNO;

select *
from emp
where sal < 2000
    or sal > 3000;
    
select *
from emp
where sal < 2000
union
select *
from emp
where sal > 3000;

SELECT EMPNO, ENAME, JOB, MGR, TO_CHAR(HIREDATE, 'YYYY-MM-DD') HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE NOT (SAL >= 2000 AND SAL <= 3000);

SELECT  EMPNO , ENAME , JOB, MGR ,HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE NOT (SAL >=2000 AND SAL <= 3000);

SELECT  EMPNO , ENAME , JOB, MGR ,HIREDATE, SAL, COMM, DEPTNO
FROM EMP
MINUS
SELECT  EMPNO , ENAME , JOB, MGR ,HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE SAL >= 2000 AND SAL <= 3000;

SELECT EMPNO, ENAME, JOB, MGR, TO_CHAR(HIREDATE, 'YYYY-MM-DD') HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE SAL < 2000 OR SAL > 3000;

SELECT EMPNO, ENAME, JOB, MGR, TO_CHAR(HIREDATE, 'YYYY-MM-DD') AS HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE SAL < 2000
    OR SAL > 3000;
    

SELECT * 
FROM EMP
WHERE    
    SAL < 2000
    OR SAL > 3000
ORDER BY EMPNO;

SELECT *
FROM EMP
MINUS
SELECT *
FROM EMP
WHERE                
    SAL >= 2000
    AND SAL <= 3000;
    
-- Q5-5. 사원 이름에 E가 포함되어 있는 30번 부서의 사원 중  
-- 급여가 1000~2000 사이가 아닌 사원 이름, 사원 번호, 급여, 부서 번호를 출력하기

SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE ENAME LIKE '%E%' AND DEPTNO = 30 AND SAL NOT BETWEEN 1000 AND 2000;

SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30 
    AND ENAME LIKE '%E%' 
    AND SAL NOT BETWEEN 1000 AND 2000;

SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30 AND ENAME LIKE '%E%' 
    AND SAL NOT BETWEEN 1000 AND 2000;

WITH E30 AS (
  SELECT 
    ENAME, EMPNO, SAL, DEPTNO
  FROM EMP
  WHERE     
    DEPTNO = 30
    AND ENAME LIKE '%E%'
)
SELECT
  ENAME, EMPNO, SAL, DEPTNO
FROM E30
WHERE SAL NOT BETWEEN 1000 AND 2000;

SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30
AND ENAME LIKE '%E%'
AND SAL NOT BETWEEN 1000 AND 2000
ORDER BY EMPNO;

select ename,empno,sal,deptno 
from (select * from emp where ename like'%E%' and deptno = 30)
where sal not between 1000 and 2000;

SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30
    AND ENAME LIKE '%E%'
INTERSECT
SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 2000;

SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30
  AND INSTR(ENAME, 'E') > 0
  AND (SAL < 1000 OR SAL > 2000);

SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30
    AND ENAME LIKE '%E%'
    AND (SAL < 1000 OR SAL > 2000);

select ename, empno, sal, deptno
from emp
where deptno = 30
    and ename like '%E%'
    and not sal between 1000 and 2000;

SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30 AND ENAME LIKE '%E%'
    AND SAL NOT BETWEEN 1000 AND 2000
ORDER BY ENAME;

SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30 AND INSTR(ENAME, 'E') > 0
INTERSECT
SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE SAL < 1000 OR SAL > 2000;

SELECT ENAME, EMPNO, SAL, DEPTNO
FROM EMP
WHERE DEPTNO = 30 
  AND ENAME IN (SELECT ENAME FROM EMP WHERE ENAME LIKE '%E%')
  AND (SAL > 2000 OR SAL < 1000);


-- Q5-6. 추가 수당이 존재하지 않고 상급자가 있고 직책이 MANAGER, CLERK인 사원 중에서
-- 사원 이름의 두 번째 글자가 L이 아닌 사원의 정보를 출력하기

SELECT EMPNO, ENAME, JOB, TO_CHAR(HIREDATE, 'YYYY/MM/DD') AS HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE COMM IS NULL
    AND MGR IS NOT NULL
    AND JOB IN('MANAGER', 'CLERK')
    AND ENAME NOT LIKE '_L%';   
    
SELECT EMPNO, ENAME, JOB, MGR, TO_CHAR(HIREDATE, 'YYYY/MM/DD') HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE 
    JOB = 'MANAGER' OR JOB = 'CLERK'
    AND COMM IS NULL 
    AND MGR IS NOT NULL 
    AND ENAME NOT LIKE '_L%';
    
SELECT *
FROM EMP
WHERE COMM IS NULL AND MGR IS NOT NULL AND JOB IN ('MANAGER', 'CLERK')
    AND SUBSTR(ENAME, 2, 1) <> 'L'
ORDER BY EMPNO;

SELECT *
FROM EMP
WHERE COMM IS NULL
AND MGR IS NOT NULL
AND (JOB = 'MANAGER' OR JOB = 'CLERK')
AND SUBSTR(ENAME, 2, 1) != 'L';

SELECT *
FROM EMP
WHERE COMM IS NULL
AND MGR IS NOT NULL
AND (JOB = 'MANAGER' OR JOB = 'CLERK')
AND ENAME NOT LIKE '_L%';
    
select * from (select * from emp where comm is null and mgr is not null)
where job in ('MANAGER','CLERK') and ename not like '_L%';

SELECT EMPNO, ENAME, JOB, MGR, TO_CHAR(HIREDATE, 'YYYY/MM/DD') HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE COMM IS NULL
AND MGR IS NOT NULL
AND JOB IN ('MANAGER', 'CLERK')
AND INSTR(SUBSTR(ENAME, 2, 1), 'L') = 0;

SELECT EMPNO, ENAME, JOB, MGR, TO_CHAR(HIREDATE, 'YYYY/MM/DD') AS HIREDATE, SAL, COMM, DEPTNO
FROM EMP
WHERE COMM IS NULL
    AND MGR IS NOT NULL
    AND JOB IN ('MANAGER', 'CLERK')
    AND ENAME NOT LIKE '_L%';



SELECT EMPNO, ENAME, JOB, MGR, TO_CHAR(HIREDATE, 'YYYY/MM/DD') "HIREDATE", SAL, COMM, DEPTNO
FROM EMP
WHERE COMM IS NULL
    AND MGR IS NOT NULL
    AND JOB IN ('MANAGER', 'CLERK')
    AND INSTR(ENAME, 'L', 2) <> 2;

SELECT EMPNO, ENAME, JOB, MGR,TO_CHAR(HIREDATE,'YYYY/MM/DD') AS HIREDATE ,SAL, COMM, DEPTNO
FROM EMP
WHERE JOB IN ('MANAGER','CLERK')
AND ENAME NOT LIKE '_L%'
AND COMM IS NULL; 

SELECT EMPNO, JOB, MGR, TO_CHAR(HIREDATE,'YYYY/MM/DD')AS HIREDATE,SAL, COMM, DEPTNO
FROM EMP
WHERE COMM IS NULL AND MGR IS NOT NULL AND JOB IN('MANAGER','CLERK') AND ENAME NOT LIKE '_L%';

-- 6장 연습문제
-- Q6-1. EMPNO 열에는 EMP 테이블에서 사원 이름이 다섯 글자 이상이며 여섯 글자 미만인 사원 정보 출력하기
-- MASKING_EMPNO 열에는 사원 번호 앞 두 자리 외 뒷자리를 * 기호로 출력하기
-- MASKING_ENAME 열에는 사원 이름의 첫 글자만 보여 주고 나머지 글자 수만큼 * 기호로 출력하기
SELECT EMPNO,
       RPAD(SUBSTR(EMPNO, 1, 2), 4, '*') AS MASKING_EMPNO,
       ENAME,
       RPAD(SUBSTR(ENAME, 1, 1), LENGTH(ENAME), '*') AS MASKING_ENAME
FROM  EMP
WHERE LENGTH(ENAME) >= 5
    AND LENGTH(ENAME) < 6; 

SELECT EMPNO, 
    RPAD(SUBSTR(EMPNO,0,2),4,'*') AS MASKING_EMPNO, 
    ENAME, 
    RPAD(SUBSTR(ENAME,0,1),5,'*') AS MASKING_ENAME
FROM EMP
WHERE LENGTH(ENAME) >= 5  
AND LENGTH(ENAME) < 6;

SELECT EMPNO, 
    RPAD(SUBSTR(EMPNO, 1, 2),  LENGTH(EMPNO), '*') MASKING_EMPNO, 
    ENAME, 
    RPAD(SUBSTR(ENAME, 1, 1), LENGTH(ENAME), '*') MASKING_ENAME
FROM EMP
WHERE LENGTH(ENAME) >= 5
    AND LENGTH(ENAME) < 6;
    
select empno,
    rpad(substr(empno,1,2),4,'*') as masking_empno,
    ename,
    rpad(substr(ename,1,1),5,'*') as masking_ename
from emp
where length(ename) >=5 and length(ename) <6;    

SELECT EMPNO,
    RPAD(SUBSTR(EMPNO, 1, 2), LENGTH(EMPNO), '*') AS MASKING_EMPNO,
    ENAME,
    RPAD(SUBSTR(ENAME, 1, 1), LENGTH(ENAME), '*') AS MASKING_ENAME
FROM EMP
WHERE LENGTH(ENAME) >= 5 
    AND LENGTH(ENAME) < 6;

SELECT EMPNO, 
    SUBSTR(TO_CHAR(EMPNO), 1, 2) || LPAD('*', LENGTH(TO_CHAR(EMPNO)) - 2, '*') "MASKING_EMPNO", 
    ENAME, 
    SUBSTR(ENAME, 1, 1) || LPAD('*', LENGTH(ENAME) - 1, '*') AS "MASKING_ENAME"
FROM EMP
WHERE LENGTH(ENAME) >= 5 AND LENGTH(ENAME) < 6;

SELECT EMPNO, 
    RPAD(SUBSTR(EMPNO, 1, 2), LENGTH(EMPNO), '*') AS MASKING_EMPNO,
    ENAME, 
    RPAD(SUBSTR(ENAME, 1, 1), LENGTH(ENAME), '*') AS MASKING_ENAME
FROM EMP
WHERE LENGTH(ENAME) >= 5 AND LENGTH(ENAME) < 6
ORDER BY EMPNO;
    
 SELECT EMPNO, 
    SUBSTR(TO_CHAR(EMPNO), 1, 2) || LPAD('*', LENGTH(TO_CHAR(EMPNO)) - 2, '*') "MASKING_EMPNO", 
    ENAME, 
    SUBSTR(ENAME, 1, 1) || LPAD('*', LENGTH(ENAME) - 1, '*') AS "MASKING_ENAME"
FROM EMP
WHERE LENGTH(ENAME) >= 5 AND LENGTH(ENAME) < 6;

SELECT EMPNO, 
       RPAD(SUBSTR(EMPNO, 1, LENGTH(EMPNO) - 2), LENGTH(EMPNO), '*') AS MASKING_EMPNO, 
       ENAME,
       RPAD(SUBSTR(ENAME, 1, 1), LENGTH(ENAME), '*') AS MASKING_ENAME
FROM EMP
WHERE  LENGTH(ENAME) >= 5 AND LENGTH(ENAME) < 6;


SELECT
    EMPNO,
    SUBSTR(EMPNO, 1, 2) || RPAD('*', LENGTH(EMPNO) - 2, '*') AS MASKING_EMPNO,
    ENAME,
    SUBSTR(ENAME, 1, 1) || RPAD('*', LENGTH(ENAME) - 1, '*') AS MASKING_ENAME
FROM EMP
WHERE
    LENGTH(ENAME) >= 5
    AND LENGTH(ENAME) < 6;

-- Q6-2. EMP 테이블에서 사원들의 월 평균 근무일 수는 21.5일입니다.
-- 하루 근무 시간을 8시간으로 보았을 때 사원들의 하루 급여와 시급을 계산하여 출력하기
-- 단 하루 급여는 소수점 세 번째 자리에서 버리고, 시급은 두 번째 소수점에서 반올림하기

SELECT EMPNO, ENAME, SAL, TRUNC(SAL/21.5,2) AS DAY_PAY, ROUND(SAL/21.5/8,1) AS TIME_PAY
FROM EMP;

select empno, ename ,sal,
trunc(sal/21.5,2) as day_pay,
round(sal/21.5/8,1) as time_pay
from emp;

SELECT EMPNO, ENAME, SAL, 
    TRUNC(SAL / 21.5, 2) AS DAY_PAY, 
    ROUND(SAL / (21.5 * 8) , 1) AS TIME_PAY
FROM EMP
ORDER BY EMPNO;

SELECT EMPNO, ENAME, SAL, 
    TRUNC(SAL/21.5 ,2) AS DAY_PAY, 
    ROUND(SAL/21.5/8, 1) AS TIME_PAY
FROM EMP;

SELECT EMPNO, ENAME, SAL, 
    TRUNC(SAL/21.5, 2) AS DAY_PAY, 
    ROUND(SAL/(21.5*8), 1) AS TIME_PAY
FROM EMP;

SELECT
    EMPNO,
    ENAME,
    SAL,
    TRUNC(SAL / 21.5, 2) AS DAY_PAY,
    ROUND(SAL / 21.5 / 8, 1) AS TIME_PAY
FROM EMP;

-- Q6-3. EMP 테이블에서 사원들은 입사일을 기준으로 3개월이 지난 후 첫 월요일에 정직원이 됩니다.
-- 사원들이 정직원이 되는 날짜를 YYYY-MM-DD 형식으로 출력하기
-- 단, 추가 수당이 없는 사원의 추가 수당은 N/A로 출력하기

SELECT EMPNO, ENAME, HIREDATE,
       TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '월요일'), 'YYYY-MM-DD') AS R_JOB,
       NVL(TO_CHAR(COMM), 'N/A') AS COMM
FROM EMP; 

SELECT
    EMPNO,
    ENAME,
    TO_CHAR(HIREDATE, 'YYYY/DD/MM') AS HIREDATE,
    TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '월요일'), 'YYYY-MM-DD') AS R_JOB,
    NVL2(COMM, TO_CHAR(COMM), 'N/A') AS COMM
FROM EMP
ORDER BY EMPNO;

select empno,ename,to_char(hiredate,'YYYY/MM/DD') as hiredate,
to_char(next_day(add_months(hiredate,3),'월요일'),'YYYY-MM-DD') as r_job,
decode(comm, null,'N/A',comm) as comm
from emp;

SELECT  EMPNO, ENAME, HIREDATE,
    TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '월요일'), 'YYYY-MM-DD') AS R_DATE, 
    CASE 
        WHEN COMM IS NULL THEN 'N/A'
        ELSE TO_CHAR(COMM)
    END AS COMM
FROM 
    EMP;

SELECT EMPNO, ENAME, 
    TO_CHAR(HIREDATE, 'YYYY/MM/DD') HIREDATE,
    TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '월요일' ), 'YYYY-MM-DD') AS R_JOB,
    DECODE(COMM, NULL, 'N/A', TO_CHAR(COMM)) AS COMM
FROM EMP;

SELECT EMPNO, 
    ENAME, 
    TO_CHAR(HIREDATE,'YYYY/MM/DD') AS HIREDATE, 
    TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '월요일'), 'YYYY-MM-DD') AS R_JOB, 
    CASE
        WHEN TO_CHAR(COMM) IS NULL THEN 'N/A'
        ELSE TO_CHAR(COMM)
    END AS COMM
FROM EMP;

-- Q6-4.EMP 테이블의 모든 사원을 대상으로 직속 상관의 사원 번호를 다음과 같은 조건을 기준으로
-- 변환해서 CHG_MGR 열에 출력하기
-- 조건은 교재 175 페이지를 참고
SELECT EMPNO, ENAME, MGR,
    CASE
        WHEN MGR IS NULL THEN '0000'
        WHEN SUBSTR(MGR, 1, 2) = '78' THEN '8888'
        WHEN SUBSTR(MGR, 1, 2) = '77' THEN '7777'
        WHEN SUBSTR(MGR, 1, 2) = '76' THEN '6666'
        WHEN SUBSTR(MGR, 1, 2) = '75' THEN '5555'
        ELSE TO_CHAR(MGR)
    END AS CHG_MGR
FROM EMP;

SELECT EMPNO, ENAME, MGR,
    CASE
        WHEN MGR IS NULL THEN '0000'
        WHEN SUBSTR(MGR, 1, 2) = '75' THEN '5555'
        WHEN SUBSTR(MGR, 1, 2) = '76' THEN '6666'
        WHEN SUBSTR(MGR, 1, 2) = '77' THEN '7777'
        WHEN SUBSTR(MGR, 1, 2) = '78' THEN '8888'
        ELSE TO_CHAR(MGR)
    END AS CHG_MGR
FROM EMP;

SELECT EMPNO, ENAME, MGR,
    CASE
        WHEN MGR IS NULL THEN LPAD(0000, 4, '0')
        WHEN SUBSTR(MGR, 1, 2) = '75' THEN TO_CHAR(5555)
        WHEN SUBSTR(MGR, 1, 2) = '76' THEN TO_CHAR(6666)
        WHEN SUBSTR(MGR, 1, 2) = '77' THEN TO_CHAR(7777)
        WHEN SUBSTR(MGR, 1, 2) = '78' THEN TO_CHAR(8888)
        ELSE TO_CHAR(MGR)
    END AS CHG_MGR
FROM EMP;


SELECT EMPNO, ENAME, MGR,
    CASE
        WHEN MGR IS NULL THEN TO_CHAR(LPAD(0000,4,'0'))
        WHEN SUBSTR(MGR, 1, 2) = '75' THEN TO_CHAR(5555)
        WHEN SUBSTR(MGR, 1, 2) = '76' THEN TO_CHAR(6666)
        WHEN SUBSTR(MGR, 1, 2) = '77' THEN TO_CHAR(7777)
        WHEN SUBSTR(MGR, 1, 2) = '78' THEN TO_CHAR(8888)
        ELSE TO_CHAR(MGR)
    END AS CHG_MGR
FROM EMP;

SELECT EMPNO, ENAME, MGR,
       CASE 
           WHEN MGR IS NULL THEN '0000'
           WHEN TO_CHAR(MGR) LIKE '75%' THEN '5555'
           WHEN TO_CHAR(MGR) LIKE '76%' THEN '6666'
           WHEN TO_CHAR(MGR) LIKE '77%' THEN '7777'
           WHEN TO_CHAR(MGR) LIKE '78%' THEN '8888'
           ELSE TO_CHAR(MGR)
       END AS "CHG_MGR"
FROM EMP;

SELECT
    EMPNO,
    ENAME,
    MGR,
    CASE
        WHEN MGR IS NULL THEN '0000'
        WHEN SUBSTR(TO_CHAR(MGR), 1, 2) = '75' THEN '5555'
        WHEN SUBSTR(TO_CHAR(MGR), 1, 2) = '76' THEN '6666'
        WHEN SUBSTR(TO_CHAR(MGR), 1, 2) = '77' THEN '7777'
        WHEN SUBSTR(TO_CHAR(MGR), 1, 2) = '78' THEN '8888'
        ELSE TO_CHAR(MGR)
    END AS CHG_MGR
FROM EMP;

SELECT EMPNO, ENAME, MGR, 
    CASE
        WHEN MGR IS NULL THEN '0000'
        WHEN SUBSTR(MGR, 1, 2) = 75 THEN '5555'
        WHEN SUBSTR(MGR, 1, 2) = 76 THEN '6666'
        WHEN SUBSTR(MGR, 1, 2) = 77 THEN '7777'
        WHEN SUBSTR(MGR, 1, 2) = 78 THEN '8888'
        ELSE TO_CHAR(MGR)
    END AS CHG_MGR
FROM EMP
ORDER BY EMPNO;

select empno,ename,mgr,
case
    when mgr is null then '0000'
    when substr(mgr,1,2) ='75' then '5555'
    when substr(mgr,1,2) ='76' then '6666'
    when substr(mgr,1,2) ='77' then '7777'
    when substr(mgr,1,2) ='78' then '8888'
    else to_char(mgr)
end as chg_mgr
from emp;

select empno, ename, mgr,
decode(substr(to_char(mgr), 1, 2),
    null, '0000',
    '75', '5555',
    '76', '6666',
    '77', '7777',
    '78', '8888',
    to_char(mgr)
) as chg_mgr
from emp;

SELECT EMPNO, ENAME, MGR,
    DECODE (SUBSTR(TO_CHAR(MGR), 1, 2),
        NULL, '0000',
        '75', '5555',
        '76', '6666',
        '77', '7777',
        '78', '8888',
        MGR) AS CHG_MGR
FROM EMP;

-- 7장 연습문제
-- Q7-1. EMP 테이블을 이용하여 부서 번호, 평균 급여, 최고 급여, 최저 급여, 사원 수를 출력하기
-- 단, 평균 급여를 출력할 때 소수점을 제외하고 각 부서 번호별로 출력하기

SELECT DEPTNO,
    TRUNC(AVG(SAL)) AS AVG_SAL,
    MAX(SAL) AS MAX_SAL,
    MIN(SAL) AS MIN_SAL,
    COUNT(*) AS CNT
FROM EMP
GROUP BY DEPTNO; 

SELECT DEPTNO,
    TRUNC(AVG(SAL)) AS "AVG_SAL",
    TRUNC(MAX(SAL)) AS "MAX_SAL",
    TRUNC(MIN(SAL)) AS "MIN_SAL",
    COUNT(SAL) AS "CNT"
FROM EMP
GROUP BY DEPTNO;

SELECT 
    DEPTNO, 
    TRUNC(AVG(SAL)) AS AVG_SAL, 
    MAX(SAL) AS MAX_SAL, 
    MIN(SAL) AS MIN_SAL, 
    COUNT(ENAME) AS CNT
FROM EMP
GROUP BY DEPTNO;

SELECT DEPTNO, 
    TRUNC(AVG(SAL)) AS "AVG_SAL", 
    MAX(SAL) AS "MAX_SAL", 
    MIN(SAL) AS "MIN_SAL", 
    COUNT(EMPNO) AS "CNT"
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO DESC;

SELECT DEPTNO, 
    TRUNC(AVG(SAL)) AS AVG_SAL, 
    MAX(SAL) AS MAX_SAL, 
    MIN(SAL) AS MIN_SAL, 
    COUNT(*) AS CNT
FROM EMP
GROUP BY DEPTNO;

SELECT DEPTNO, 
       FLOOR(AVG(SAL)) AS AVG_SAL, 
       MAX(SAL) AS MAX_SAL,         
       MIN(SAL) AS MIN_SAL,        
       COUNT(*) AS CNT        
FROM EMP
GROUP BY DEPTNO;

select deptno, trunc(avg(sal),0) as avg_sal, max(sal),min(sal),count(deptno)
from emp
group by deptno;

SELECT DEPTNO, 
    TRUNC(AVG(SAL), 0) AS AVG_SAL, 
    MAX(SAL) AS MAX_SAL, 
    MIN(SAL) AS MIN_SAL, 
    COUNT(EMPNO) AS CNT
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO DESC;

SELECT DEPTNO, 
    TRUNC(AVG(SAL), 0) AS AVG_SAL, 
    MAX(SAL) AS "MAX_SAL", 
    MIN(SAL) MIN_SAL, 
    COUNT(ENAME) "CNT"
FROM EMP
GROUP BY DEPTNO;

SELECT
    DEPTNO,
    TRUNC(AVG(SAL)) AS AVG_SAL,
    MAX(SAL) AS MAX_SAL,
    MIN(SAL) AS MIN_SAL, 
    COUNT(*) AS CNT
FROM EMP
GROUP BY DEPTNO
ORDER BY COUNT(*) DESC;

SELECT 
    DEPTNO, 
    TRUNC(AVG(SAL)) AS AVG_SAL,  -- 평균 급여를 소수점 제외 정수로 표시
    MAX(SAL) AS MAX_SAL,         -- 최고 급여
    MIN(SAL) AS MIN_SAL,         -- 최저 급여
    COUNT(*) AS EMP_CNT          -- 사원 수
FROM EMP
GROUP BY DEPTNO; 

-- Q7-2. 같은 직책에 종사하는 사원이 3명 이상인 직책과 인원수를 출력하기
SELECT JOB,
    COUNT(*)
FROM EMP
GROUP BY JOB
HAVING COUNT(*) >= 3; 

SELECT JOB, COUNT(*)
FROM EMP
GROUP BY JOB
HAVING COUNT(*) >= 3;

select job,count(*)
from emp
group by job
having count(*) >= 3;

SELECT 
    JOB,            
    COUNT(*) AS "COUNT(*)"  -- 해당 직책에 종사하는 사원 수
FROM EMP
GROUP BY JOB
HAVING COUNT(*) >= 3;  -- 3명 이상인 직책만 선택

-- Q7-3. 사원들의 입사 연도를 기준으로 부서별 몇 명이 입사했는지 출력하기

SELECT TO_CHAR(HIREDATE, 'YYYY') AS HIRE_YEAR,
    DEPTNO,
    COUNT(*) AS CNT
FROM EMP
GROUP BY TO_CHAR(HIREDATE, 'YYYY'), DEPTNO; 

SELECT TO_CHAR(HIREDATE,'YYYY') AS HIRE_YEAR, DEPTNO, COUNT(*) AS CNT
FROM EMP
GROUP BY TO_CHAR(HIREDATE, 'YYYY'),DEPTNO
HAVING COUNT(*) >0;

SELECT TO_CHAR(HIREDATE, 'YYYY') AS "HIRE_YEAR", --YYYY 형식으로 입사 년도 문자열 변환
    DEPTNO,
    COUNT(HIREDATE) AS "CNT" -- 입사 년도별 카운트
FROM EMP
GROUP BY TO_CHAR(HIREDATE, 'YYYY'), DEPTNO; -- 입사 년도 형식 변환 그룹핑

SELECT 
    TO_CHAR(HIREDATE, 'YYYY') AS "HIRE_YEAR",
    DEPTNO,
    COUNT(*) AS "CNT"
FROM 
    EMP
GROUP BY 
    TO_CHAR(HIREDATE, 'YYYY'), DEPTNO;

SELECT TO_CHAR(HIREDATE, 'YYYY') HIRE_YEAR, DEPTNO, COUNT(*) CNT
FROM EMP
GROUP BY TO_CHAR(HIREDATE, 'YYYY'), DEPTNO;

select to_char(hiredate,'YYYY') as hire_year,deptno,count(*) as cnt
from emp
group by to_char(hiredate,'YYYY'),deptno;

SELECT TO_CHAR(HIREDATE, 'YYYY') AS HIRE_YEAR, DEPTNO, COUNT(*) AS CNT
FROM EMP
GROUP BY TO_CHAR(HIREDATE, 'YYYY'), DEPTNO
HAVING COUNT(*) IS NOT NULL;

-- Q7-4. 추가 수당을 받는 사원 수와 받지 않는 사원 수를 출력하기

SELECT NVL2(COMM, 'O', 'X') AS EXIST_COMM,
    COUNT(*) AS CNT
FROM EMP
GROUP BY NVL2(COMM, 'O', 'X'); 

SELECT NVL2(COMM,'O','X') AS EXIST_COMM, COUNT(*) AS CNT
FROM EMP
GROUP BY NVL2(COMM,'O','X');

SELECT
    NVL2(COMM,'O','X') AS "EXIST_COMM", -- NULL 일 때는 X, NULL 이 아닐떄는 O
    COUNT(*) AS "CNT" -- NULL 포함하여 카운팅
FROM EMP
GROUP BY NVL2(COMM,'O','X'); -- NULL 일 때는 X, NULL 이 아닐 때는 O 로 그룹

SELECT 
    CASE 
        WHEN COMM IS NOT NULL THEN 'O' 
        ELSE 'X' 
    END AS "EXIST_COMM",
    COUNT(EMPNO) AS "CNT"
FROM 
    EMP
GROUP BY 
    CASE 
        WHEN COMM IS NOT NULL THEN 'O' 
        ELSE 'X' 
    END
ORDER BY "EXIST_COMM" DESC;

SELECT 
  CASE 
    WHEN COMM IS NOT NULL THEN 'O'
    ELSE 'X'
  END AS EXIST_COMM, 
  COUNT(*) AS CNT
FROM EMP
GROUP BY 
  CASE 
    WHEN COMM IS NOT NULL THEN 'O'
    ELSE 'X'
  END;

SELECT
    NVL2(COMM, 'O', 'X') AS EXIST_COMM,
    COUNT(*) AS CNT
FROM EMP 
GROUP BY NVL2(COMM, 'O', 'X');

select decode(comm,null,'X','O') as exist_comm, count(decode(comm,null,'X','O')) as cnt
from emp
group by decode(comm,null,'X','O');

SELECT DECODE(COMM, NULL, 'X', 'O') AS EXIST_COMM, COUNT(*) AS CNT
FROM EMP
GROUP BY DECODE(COMM, NULL, 'X', 'O');

SELECT 
    CASE
        WHEN COMM IS NULL THEN 'X'
        ELSE 'O'
    END AS EXIST_COMM, COUNT(*) AS CNT
FROM EMP
GROUP BY 
    CASE
        WHEN COMM IS NULL THEN 'X'
        ELSE 'O'
    END;


-- Q7-5. 각 부서의 입사 연도별 사원 수, 최고 급여, 급여 합, 평균 급여를 출력하고 각 부서별 소계와 총계 출력하기
SELECT DEPTNO,
    TO_CHAR(HIREDATE, 'YYYY') AS HIRE_YEAR,
    COUNT(*) AS CNT,
    MAX(SAL) AS MAX_SAL,
    SUM(SAL) AS SUM_SAL,
    AVG(SAL) AS AVG_SAL
FROM EMP
GROUP BY ROLLUP(DEPTNO, TO_CHAR(HIREDATE, 'YYYY')); 

SELECT 
    DEPTNO, TO_CHAR(HIREDATE, 'YYYY') AS "HIRE_YEAR",
    COUNT(*) AS "CNT", MAX(SAL) AS "MAX_SAL",
    SUM(SAL) AS "SUM_SAL", ROUND(AVG(SAL), 11) AS "AVG_SAL"
FROM 
    EMP
GROUP BY 
    ROLLUP(DEPTNO, TO_CHAR(HIREDATE, 'YYYY'))
ORDER BY 
    DEPTNO,
    "HIRE_YEAR";


SELECT DEPTNO,
    TO_CHAR(HIREDATE, 'YYYY') AS "HIRE_YEAR",
    COUNT(*) AS "CNT",
    MAX(SAL) AS "MAX_SAL",
    SUM(SAL) AS "SUM_SAL",
    ROUND(AVG(SAL),11) AS "AVG_SAL" --소수점 11번째 자리로 반올림
FROM EMP
GROUP BY ROLLUP(DEPTNO, TO_CHAR(HIREDATE, 'YYYY')); --ROLLUP 함수를 이용하여 그룹화 데이터의 소계, 합계를 출력한다.

SELECT DEPTNO, 
    TO_CHAR(HIREDATE, 'YYYY') AS HIRE_YEAR, 
    COUNT(*) AS CNT,
    MAX(SAL) AS MAX_SAL, 
    SUM(SAL) AS SUM_SAL, 
    ROUND(AVG(SAL), 11) AS AVG_SAL
FROM EMP
GROUP BY ROLLUP(DEPTNO, TO_CHAR(HIREDATE, 'YYYY'))
ORDER BY DEPTNO;

select deptno, to_char(hiredate,'YYYY') as hire_year, count(to_char(hiredate,'YYYY')) as cnt,
max(sal) as max_sal, sum(sal) as sum_sal, avg(sal) as avg_sal
from emp
group by  rollup(deptno,to_char(hiredate,'YYYY'))
order by deptno;

SELECT DEPTNO,
       TO_CHAR(HIREDATE, 'YYYY') AS HIRE_YEAR,
       COUNT(*) AS CNT,
       MAX(SAL) AS MAX_SAL,
       SUM(SAL) AS SUM_SAL,
       AVG(SAL) AS AVG_SAL
FROM EMP
GROUP BY DEPTNO, TO_CHAR(HIREDATE, 'YYYY')
UNION ALL
SELECT DEPTNO,
       NULL AS HIRE_YEAR,
       COUNT(*) AS CNT,
       MAX(SAL) AS MAX_SAL,
       SUM(SAL) AS SUM_SAL,
       AVG(SAL) AS AVG_SAL
FROM EMP
GROUP BY DEPTNO
UNION ALL
SELECT NULL AS DEPTNO,
       NULL AS HIRE_YEAR,
       COUNT(*) AS CNT,
       MAX(SAL) AS MAX_SAL,
       SUM(SAL) AS SUM_SAL,
       AVG(SAL) AS AVG_SAL
FROM EMP
ORDER BY DEPTNO, HIRE_YEAR;


-- 8장 연습문제
-- Q8-1. 급여가 2000 초과인 사원들의 부서 정보, 사원 정보를 출력하기
--1) SQL-99 이전 방식
SELECT D.DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.SAL
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
    AND E.SAL > 2000;

SELECT D.DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.SAL
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO AND E.SAL > 2000
ORDER BY DEPTNO;

SELECT E.DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.SAL
FROM DEPT D, EMP E
WHERE D.DEPTNO = E.DEPTNO
    AND SAL > 2000
ORDER BY DEPTNO;

SELECT E.DEPTNO, DNAME, EMPNO, ENAME, SAL
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND SAL > 2000
ORDER BY DEPTNO;

SELECT E.DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.SAL
FROM EMP E, DEPT D 
WHERE E.DEPTNO=D.DEPTNO -- 등가 조인
AND SAL>2000
ORDER BY E.DEPTNO; -- DEPTNO으로 오름차순 정렬

select e.deptno, dname,empno,ename,sal
from  emp e,dept d
where e.deptno = d.deptno and sal >2000
order by e.deptno;

--2) SQL-99 방식
SELECT DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.SAL
FROM EMP E NATURAL JOIN DEPT D
WHERE E.SAL > 2000;

SELECT DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.SAL
FROM EMP E NATURAL JOIN DEPT D
WHERE E.SAL > 2000
ORDER BY DEPTNO;

SELECT DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.SAL
FROM EMP E JOIN DEPT D USING (DEPTNO)
WHERE SAL > 2000
ORDER BY DEPTNO;

SELECT E.DEPTNO, DNAME, EMPNO, ENAME, SAL
FROM EMP E JOIN DEPT D ON (E.DEPTNO = D.DEPTNO)
WHERE SAL > 2000
ORDER BY DEPTNO;

SELECT DEPTNO, DNAME, EMPNO, ENAME, SAL
FROM EMP NATURAL JOIN DEPT -- NATURAL JOIN
WHERE SAL > 2000
ORDER BY DEPTNO; --오름차순 정렬

select e.deptno, dname,empno,ename,sal
from emp e
join dept d on e.deptno = d.deptno
where sal >2000
order by e.deptno;

SELECT E.DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.SAL
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
WHERE  E.SAL > 2000
ORDER BY E.DEPTNO;

SELECT D.DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.SAL
FROM EMP E
CROSS JOIN DEPT D
WHERE E.DEPTNO = D.DEPTNO
   AND E.SAL > 2000
ORDER BY D.DEPTNO;

-- Q8-2. 각 부서별 평균 급여, 최대 급여, 최소 급여, 사원 수 출력하기
--1) SQL-99 이전 방식
SELECT D.DEPTNO,
    D.DNAME,
    TRUNC(AVG(SAL)) AS AVG_SAL,
    MAX(SAL) AS MAX_SAL,
    MIN(SAL) AS MIN_SAL,
    COUNT(*) AS CNT
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
GROUP BY D.DEPTNO, D.DNAME;

SELECT D.DEPTNO, D.DNAME,
    TRUNC(AVG(SAL), 0) AS AVG_SAL,
    MAX(SAL) AS MAX_SAL,
    MIN(SAL) AS MIN_SAL,
    COUNT(*) AS CNT
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
GROUP BY D.DEPTNO, D.DNAME
ORDER BY DEPTNO;

SELECT D.DEPTNO, D.DNAME,TRUNC (AVG(E.SAL)) AS AVG_SAL, MAX(E.SAL) AS MAX_SAL, MIN(E.SAL) AS MIN_SAL, COUNT(E.EMPNO) AS CNT
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
GROUP BY D.DEPTNO, D.DNAME;

SELECT E.DEPTNO, D.DNAME, TRUNC(AVG(SAL)) AS AVG_SAL, MAX(SAL) AS MAX_SAL, MIN(SAL) AS MIN_SAL, COUNT(*) AS CNT
FROM EMP E, DEPT D
WHERE E.DEPTNO=D.DEPTNO
GROUP BY E.DEPTNO,D.DNAME;

select e.deptno,dname,trunc(avg(sal),0) as avg_sal,
max(sal) as max_sal, min(sal) as min_sal, count(e.deptno) as cnt
from emp e, dept d
where e.deptno = d.deptno
group by e.deptno, dname;

SELECT E.DEPTNO, D.DNAME, TRUNC(AVG(E.SAL)), MAX(E.SAL),MIN(E.SAL), COUNT(*)AS CNT
FROM EMP E, DEPT D 
WHERE E.DEPTNO = D.DEPTNO
GROUP BY E.DEPTNO,D.DNAME
ORDER BY E.DEPTNO;

SELECT E.DEPTNO, D.DNAME,
    TRUNC(AVG(E.SAL)) AS "AVG_SAL", -- 소수점 첫번째 자리 버림
    MAX(E.SAL) AS "MAX_SAL",
    MIN(E.SAL) AS "MIN_SAL",
    COUNT(E.JOB) AS "CNT"
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
GROUP BY D.DNAME,E.DEPTNO
ORDER BY DEPTNO;

--2) SQL-99 방식
SELECT DEPTNO,
    D.DNAME,
    TRUNC(AVG(SAL)) AS AVG_SAL,
    MAX(SAL) AS MAX_SAL,
    MIN(SAL) AS MIN_SAL,
    COUNT(*) AS CNT
FROM EMP E JOIN DEPT D USING (DEPTNO)
GROUP BY DEPTNO, D.DNAME;

SELECT DEPTNO, D.DNAME,
    TRUNC(AVG(SAL), 0) AS AVG_SAL,
    MAX(SAL) AS MAX_SAL,
    MIN(SAL) AS MIN_SAL,
    COUNT(*) AS CNT
FROM EMP E NATURAL JOIN DEPT D
GROUP BY DEPTNO, D.DNAME
ORDER BY DEPTNO;

SELECT D.DEPTNO, D.DNAME, TRUNC(AVG(E.SAL)) AS AVG_SAL, MAX(E.SAL) AS MAX_SAL, MIN(E.SAL) AS MIN_SAL, COUNT(E.EMPNO) AS CNT
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
GROUP BY D.DEPTNO, D.DNAME;

SELECT E.DEPTNO, D.DNAME, TRUNC(AVG(SAL)) AS AVG_SAL, MAX(SAL) AS MAX_SAL, MIN(SAL) AS MIN_SAL, COUNT(*) AS CNT
FROM EMP E JOIN DEPT D ON(E.DEPTNO=D.DEPTNO)
GROUP BY E.DEPTNO,D.DNAME;

SELECT D.DEPTNO, D.DNAME,
       TRUNC(AVG(E.SAL)) AS AVG_SAL,
       MAX(E.SAL) AS MAX_SAL,
       MIN(E.SAL) AS MIN_SAL,
       COUNT(*) AS CNT
FROM DEPT D
INNER JOIN EMP E ON D.DEPTNO = E.DEPTNO
GROUP BY D.DEPTNO, D.DNAME;

select e.deptno,dname,trunc(avg(sal),0) as avg_sal,
max(sal) as max_sal, min(sal) as min_sal, count(e.deptno) as cnt
from emp e
join dept d on e.deptno = d.deptno
group by e.deptno, dname;

SELECT E.DEPTNO, D.DNAME, TRUNC(AVG(E.SAL)), MAX(E.SAL),MIN(E.SAL), COUNT(*)AS CNT
FROM EMP E JOIN DEPT D ON E.DEPTNO = D.DEPTNO
GROUP BY E.DEPTNO,D.DNAME
ORDER BY E.DEPTNO;

-- NATURAL JOIN
SELECT DEPTNO, DNAME,
    ROUND(AVG(SAL)) AS "AVG_SAL",
    MAX(SAL) AS "MAX_SAL",
    MIN(SAL) AS "MIN_SAL",
    COUNT(JOB) AS "CNT"
FROM EMP NATURAL JOIN DEPT
GROUP BY DEPTNO, DNAME
ORDER BY DEPTNO;

-- Q8-3. 모든 부서 정보와 사원 정보를 부서번호, 사원 이름순으로 정렬하여 출력하기
--1) SQL-99 이전 방식
SELECT D.DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.JOB, E.SAL
FROM EMP E, DEPT D
WHERE E.DEPTNO(+) = D.DEPTNO
ORDER BY D.DEPTNO, E.ENAME;

select d.deptno, dname, empno, ename, job, sal
from emp e, dept d
where e.deptno(+) = d.deptno
order by d.deptno,ename;

--2) SQL-99 방식
SELECT D.DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.JOB, E.SAL
FROM EMP E RIGHT OUTER JOIN DEPT D ON (E.DEPTNO = D.DEPTNO)
ORDER BY D.DEPTNO, E.ENAME;

select d.deptno, dname, empno, ename, job, sal
from emp e
right join  dept d on e.deptno = d.deptno
order by d.deptno,ename;

-- Q8-4. 모븐 부서 정보, 사원 정보, 급여 등급 정보, 각 사원의 직속 상관의 정보를 
-- 부서 번호, 사원 번호 순서로 정렬하여 출력하기
--1) SQL-99 이전 방식
SELECT D.DEPTNO, D.DNAME,
    E.EMPNO, E.ENAME, E.MGR, E.SAL, E.DEPTNO,
    S.LOSAL, S.HISAL, S.GRADE,
    E2.EMPNO AS MGR_EMPNO, E2.ENAME AS MGR_ENAME
FROM EMP E, DEPT D, SALGRADE S, EMP E2
WHERE E.DEPTNO(+) = D.DEPTNO
    AND E.SAL BETWEEN S.LOSAL(+) AND S.HISAL(+)
    AND E.MGR = E2.EMPNO(+)
ORDER BY D.DEPTNO, E.EMPNO; 

select d.deptno, dname, empno, ename, mgr, sal,
e.deptno as deptno_1, losal, hisal, grade,mgr as mgr_empno,
(select e2.ename from emp e2 where e.mgr = e2.empno) as mgr_ename
from emp e, dept d,salgrade s 
where e.deptno(+) = d.deptno 
and sal between losal(+) and hisal(+)   
order by d.deptno,empno;

SELECT
    D.DEPTNO,
    D.DNAME,
    E.EMPNO, 
    E.ENAME,
    E.MGR,
    E.SAL,
    E.DEPTNO,
    S.LOSAL,
    S.HISAL,
    S.GRADE,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM DEPT D, EMP E, SALGRADE S, EMP E2
WHERE 
    D.DEPTNO = E.DEPTNO(+)
    AND E.SAL BETWEEN S.LOSAL(+) AND S.HISAL(+)
    AND E.MGR = E2.EMPNO(+)
ORDER BY D.DEPTNO, E.EMPNO;

SELECT D.DEPTNO, D.DNAME,
       E.EMPNO, E.ENAME, E.MGR, E.SAL, E.DEPTNO,
       S.LOSAL, S.HISAL, S.GRADE,
       E2.EMPNO AS MGR_EMPNO, E2.ENAME AS MGR_ENAME
FROM EMP E, DEPT D, SALGRADE S, EMP E2
WHERE E.DEPTNO(+) = D.DEPTNO
   AND E.SAL BETWEEN S.LOSAL(+) AND S.HISAL(+)
   AND E.MGR = E2.EMPNO(+)
ORDER BY D.DEPTNO, E.EMPNO; 


SELECT D.DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.MGR, E.SAL,
(SELECT DEPTNO FROM EMP WHERE EMPNO=E.MGR) AS DEPTNO_1,
S.LOSAL, S.HISAL, S.GRADE,
(SELECT EMPNO FROM EMP WHERE EMPNO=E.MGR)AS MGR_EMPNO,
(SELECT ENAME FROM EMP WHERE EMPNO=E.MGR) AS MGR_ENAME
FROM EMP E, DEPT D,SALGRADE S
WHERE E.DEPTNO(+) = D.DEPTNO
AND E.SAL BETWEEN S.HISAL(+) AND S.LOSAL(+)
ORDER BY D.DEPTNO, E.ENAME;

--2) SQL-99 방식
SELECT D.DEPTNO, D.DNAME,
    E.EMPNO, E.ENAME, E.MGR, E.SAL, E.DEPTNO,
    S.LOSAL, S.HISAL, S.GRADE,
    E2.EMPNO AS MGR_EMPNO, E2.ENAME AS MGR_ENAME
FROM EMP E RIGHT OUTER JOIN DEPT D
ON (E.DEPTNO = D.DEPTNO)
LEFT OUTER JOIN SALGRADE S
ON (E.SAL BETWEEN S.LOSAL AND S.HISAL)
LEFT OUTER JOIN EMP E2
ON (E.MGR = E2.EMPNO)
ORDER BY D.DEPTNO, E.EMPNO; 

select d.deptno,dname,empno,ename,mgr,sal,
e.deptno as deptno_1, losal, hisal, grade,mgr as mgr_empno,
(select e2.ename from emp e2 where e.mgr = e2.empno) as mgr_ename
from emp e
full outer join  dept d on e.deptno = d.deptno
full outer join salgrade s on sal between losal and hisal
order by e.deptno,e.empno;

SELECT
    D.DEPTNO,
    D.DNAME,
    E.EMPNO, 
    E.ENAME,
    E.MGR,
    E.SAL,
    E.DEPTNO,
    S.LOSAL,
    S.HISAL,
    S.GRADE,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM DEPT D
LEFT OUTER JOIN EMP E ON D.DEPTNO = E.DEPTNO
LEFT OUTER JOIN SALGRADE S ON E.SAL BETWEEN S.LOSAL AND S.HISAL
LEFT OUTER JOIN EMP E2 ON E.MGR = E2.EMPNO
ORDER BY D.DEPTNO, E.EMPNO;

SELECT D.DEPTNO, D.DNAME,
       E.EMPNO, E.ENAME, E.MGR, E.SAL, E.DEPTNO,
       S.LOSAL, S.HISAL, S.GRADE,
       E2.EMPNO AS MGR_EMPNO, E2.ENAME AS MGR_ENAME
FROM EMP E RIGHT OUTER JOIN DEPT D ON (E.DEPTNO = D.DEPTNO)
     LEFT OUTER JOIN SALGRADE S ON (E.SAL BETWEEN S.LOSAL AND S.HISAL)
     LEFT OUTER JOIN EMP E2 ON (E.MGR = E2.EMPNO)
ORDER BY D.DEPTNO, E.EMPNO;

SELECT D.DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.MGR, E.SAL,
(SELECT DEPTNO FROM EMP WHERE EMPNO=E.MGR) AS DEPTNO_1,
S.LOSAL, S.HISAL, S.GRADE,
(SELECT EMPNO FROM EMP WHERE EMPNO=E.MGR)AS MGR_EMPNO,
(SELECT ENAME FROM EMP WHERE EMPNO=E.MGR) AS MGR_ENAME
FROM EMP E RIGHT OUTER JOIN DEPT D ON (E.DEPTNO = D.DEPTNO)
LEFT OUTER JOIN SALGRADE S ON(E.SAL BETWEEN S.HISAL AND S.LOSAL)
ORDER BY D.DEPTNO, E.ENAME;

