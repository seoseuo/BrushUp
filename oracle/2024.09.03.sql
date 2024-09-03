-- 5�忬������
-- Q5-2. EMP ���̺��� ����Ͽ� 30�� �μ����� �ٹ��ϰ� �ִ� 
-- ��� �߿� ��å�� SALESMAN�� ����� �����ȣ, �̸�, ��å, �޿�, 
-- �μ� ��ȣ�� ����ϱ�

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

--Q5-3. EMP ���̺��� ����Ͽ� 20��, 30�� �μ��� �ٹ��ϰ� �ִ� ��� ��
--  �޿��� 2000 �ʰ��� ����� �� ���� ����� SELECET���� ����Ͽ�
-- �����ȣ, �̸�, �޿�, �μ���ȣ�� ����ϱ�
-- 1) ���� �����ڸ� ������� ���� ���
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


-- 2) ���� �����ڸ� ����� ���
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


-- Q5-4. NOT BETWEEN A AND B �����ڸ� ���� �ʰ�, �޿� �� ���� 2000�̻� 30000���� ���� �̿���
-- ���� ���� �����͸� ����ϱ�

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
    
-- Q5-5. ��� �̸��� E�� ���ԵǾ� �ִ� 30�� �μ��� ��� ��  
-- �޿��� 1000~2000 ���̰� �ƴ� ��� �̸�, ��� ��ȣ, �޿�, �μ� ��ȣ�� ����ϱ�

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


-- Q5-6. �߰� ������ �������� �ʰ� ����ڰ� �ְ� ��å�� MANAGER, CLERK�� ��� �߿���
-- ��� �̸��� �� ��° ���ڰ� L�� �ƴ� ����� ������ ����ϱ�

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

-- 6�� ��������
-- Q6-1. EMPNO ������ EMP ���̺��� ��� �̸��� �ټ� ���� �̻��̸� ���� ���� �̸��� ��� ���� ����ϱ�
-- MASKING_EMPNO ������ ��� ��ȣ �� �� �ڸ� �� ���ڸ��� * ��ȣ�� ����ϱ�
-- MASKING_ENAME ������ ��� �̸��� ù ���ڸ� ���� �ְ� ������ ���� ����ŭ * ��ȣ�� ����ϱ�
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

-- Q6-2. EMP ���̺��� ������� �� ��� �ٹ��� ���� 21.5���Դϴ�.
-- �Ϸ� �ٹ� �ð��� 8�ð����� ������ �� ������� �Ϸ� �޿��� �ñ��� ����Ͽ� ����ϱ�
-- �� �Ϸ� �޿��� �Ҽ��� �� ��° �ڸ����� ������, �ñ��� �� ��° �Ҽ������� �ݿø��ϱ�

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

-- Q6-3. EMP ���̺��� ������� �Ի����� �������� 3������ ���� �� ù �����Ͽ� �������� �˴ϴ�.
-- ������� �������� �Ǵ� ��¥�� YYYY-MM-DD �������� ����ϱ�
-- ��, �߰� ������ ���� ����� �߰� ������ N/A�� ����ϱ�

SELECT EMPNO, ENAME, HIREDATE,
       TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '������'), 'YYYY-MM-DD') AS R_JOB,
       NVL(TO_CHAR(COMM), 'N/A') AS COMM
FROM EMP; 

SELECT
    EMPNO,
    ENAME,
    TO_CHAR(HIREDATE, 'YYYY/DD/MM') AS HIREDATE,
    TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '������'), 'YYYY-MM-DD') AS R_JOB,
    NVL2(COMM, TO_CHAR(COMM), 'N/A') AS COMM
FROM EMP
ORDER BY EMPNO;

select empno,ename,to_char(hiredate,'YYYY/MM/DD') as hiredate,
to_char(next_day(add_months(hiredate,3),'������'),'YYYY-MM-DD') as r_job,
decode(comm, null,'N/A',comm) as comm
from emp;

SELECT  EMPNO, ENAME, HIREDATE,
    TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '������'), 'YYYY-MM-DD') AS R_DATE, 
    CASE 
        WHEN COMM IS NULL THEN 'N/A'
        ELSE TO_CHAR(COMM)
    END AS COMM
FROM 
    EMP;

SELECT EMPNO, ENAME, 
    TO_CHAR(HIREDATE, 'YYYY/MM/DD') HIREDATE,
    TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '������' ), 'YYYY-MM-DD') AS R_JOB,
    DECODE(COMM, NULL, 'N/A', TO_CHAR(COMM)) AS COMM
FROM EMP;

SELECT EMPNO, 
    ENAME, 
    TO_CHAR(HIREDATE,'YYYY/MM/DD') AS HIREDATE, 
    TO_CHAR(NEXT_DAY(ADD_MONTHS(HIREDATE, 3), '������'), 'YYYY-MM-DD') AS R_JOB, 
    CASE
        WHEN TO_CHAR(COMM) IS NULL THEN 'N/A'
        ELSE TO_CHAR(COMM)
    END AS COMM
FROM EMP;

-- Q6-4.EMP ���̺��� ��� ����� ������� ���� ����� ��� ��ȣ�� ������ ���� ������ ��������
-- ��ȯ�ؼ� CHG_MGR ���� ����ϱ�
-- ������ ���� 175 �������� ����
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

-- 7�� ��������
-- Q7-1. EMP ���̺��� �̿��Ͽ� �μ� ��ȣ, ��� �޿�, �ְ� �޿�, ���� �޿�, ��� ���� ����ϱ�
-- ��, ��� �޿��� ����� �� �Ҽ����� �����ϰ� �� �μ� ��ȣ���� ����ϱ�

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
    TRUNC(AVG(SAL)) AS AVG_SAL,  -- ��� �޿��� �Ҽ��� ���� ������ ǥ��
    MAX(SAL) AS MAX_SAL,         -- �ְ� �޿�
    MIN(SAL) AS MIN_SAL,         -- ���� �޿�
    COUNT(*) AS EMP_CNT          -- ��� ��
FROM EMP
GROUP BY DEPTNO; 

-- Q7-2. ���� ��å�� �����ϴ� ����� 3�� �̻��� ��å�� �ο����� ����ϱ�
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
    COUNT(*) AS "COUNT(*)"  -- �ش� ��å�� �����ϴ� ��� ��
FROM EMP
GROUP BY JOB
HAVING COUNT(*) >= 3;  -- 3�� �̻��� ��å�� ����

-- Q7-3. ������� �Ի� ������ �������� �μ��� �� ���� �Ի��ߴ��� ����ϱ�

SELECT TO_CHAR(HIREDATE, 'YYYY') AS HIRE_YEAR,
    DEPTNO,
    COUNT(*) AS CNT
FROM EMP
GROUP BY TO_CHAR(HIREDATE, 'YYYY'), DEPTNO; 

SELECT TO_CHAR(HIREDATE,'YYYY') AS HIRE_YEAR, DEPTNO, COUNT(*) AS CNT
FROM EMP
GROUP BY TO_CHAR(HIREDATE, 'YYYY'),DEPTNO
HAVING COUNT(*) >0;

SELECT TO_CHAR(HIREDATE, 'YYYY') AS "HIRE_YEAR", --YYYY �������� �Ի� �⵵ ���ڿ� ��ȯ
    DEPTNO,
    COUNT(HIREDATE) AS "CNT" -- �Ի� �⵵�� ī��Ʈ
FROM EMP
GROUP BY TO_CHAR(HIREDATE, 'YYYY'), DEPTNO; -- �Ի� �⵵ ���� ��ȯ �׷���

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

-- Q7-4. �߰� ������ �޴� ��� ���� ���� �ʴ� ��� ���� ����ϱ�

SELECT NVL2(COMM, 'O', 'X') AS EXIST_COMM,
    COUNT(*) AS CNT
FROM EMP
GROUP BY NVL2(COMM, 'O', 'X'); 

SELECT NVL2(COMM,'O','X') AS EXIST_COMM, COUNT(*) AS CNT
FROM EMP
GROUP BY NVL2(COMM,'O','X');

SELECT
    NVL2(COMM,'O','X') AS "EXIST_COMM", -- NULL �� ���� X, NULL �� �ƴҋ��� O
    COUNT(*) AS "CNT" -- NULL �����Ͽ� ī����
FROM EMP
GROUP BY NVL2(COMM,'O','X'); -- NULL �� ���� X, NULL �� �ƴ� ���� O �� �׷�

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


-- Q7-5. �� �μ��� �Ի� ������ ��� ��, �ְ� �޿�, �޿� ��, ��� �޿��� ����ϰ� �� �μ��� �Ұ�� �Ѱ� ����ϱ�
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
    ROUND(AVG(SAL),11) AS "AVG_SAL" --�Ҽ��� 11��° �ڸ��� �ݿø�
FROM EMP
GROUP BY ROLLUP(DEPTNO, TO_CHAR(HIREDATE, 'YYYY')); --ROLLUP �Լ��� �̿��Ͽ� �׷�ȭ �������� �Ұ�, �հ踦 ����Ѵ�.

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


-- 8�� ��������
-- Q8-1. �޿��� 2000 �ʰ��� ������� �μ� ����, ��� ������ ����ϱ�
--1) SQL-99 ���� ���
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
WHERE E.DEPTNO=D.DEPTNO -- � ����
AND SAL>2000
ORDER BY E.DEPTNO; -- DEPTNO���� �������� ����

select e.deptno, dname,empno,ename,sal
from  emp e,dept d
where e.deptno = d.deptno and sal >2000
order by e.deptno;

--2) SQL-99 ���
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
ORDER BY DEPTNO; --�������� ����

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

-- Q8-2. �� �μ��� ��� �޿�, �ִ� �޿�, �ּ� �޿�, ��� �� ����ϱ�
--1) SQL-99 ���� ���
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
    TRUNC(AVG(E.SAL)) AS "AVG_SAL", -- �Ҽ��� ù��° �ڸ� ����
    MAX(E.SAL) AS "MAX_SAL",
    MIN(E.SAL) AS "MIN_SAL",
    COUNT(E.JOB) AS "CNT"
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
GROUP BY D.DNAME,E.DEPTNO
ORDER BY DEPTNO;

--2) SQL-99 ���
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

-- Q8-3. ��� �μ� ������ ��� ������ �μ���ȣ, ��� �̸������� �����Ͽ� ����ϱ�
--1) SQL-99 ���� ���
SELECT D.DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.JOB, E.SAL
FROM EMP E, DEPT D
WHERE E.DEPTNO(+) = D.DEPTNO
ORDER BY D.DEPTNO, E.ENAME;

select d.deptno, dname, empno, ename, job, sal
from emp e, dept d
where e.deptno(+) = d.deptno
order by d.deptno,ename;

--2) SQL-99 ���
SELECT D.DEPTNO, D.DNAME, E.EMPNO, E.ENAME, E.JOB, E.SAL
FROM EMP E RIGHT OUTER JOIN DEPT D ON (E.DEPTNO = D.DEPTNO)
ORDER BY D.DEPTNO, E.ENAME;

select d.deptno, dname, empno, ename, job, sal
from emp e
right join  dept d on e.deptno = d.deptno
order by d.deptno,ename;

-- Q8-4. ��� �μ� ����, ��� ����, �޿� ��� ����, �� ����� ���� ����� ������ 
-- �μ� ��ȣ, ��� ��ȣ ������ �����Ͽ� ����ϱ�
--1) SQL-99 ���� ���
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

--2) SQL-99 ���
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

