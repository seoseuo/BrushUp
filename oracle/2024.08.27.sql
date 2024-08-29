-- Q1. 10�� �μ� �Ҽ� ����� ����ϱ�
SELECT *
FROM EMP
WHERE DEPTNO = 10;

-- �̸��� SCOTT�� ��� ����ϱ�
SELECT *
FROM EMP
WHERE ENAME = 'SCOTT';

-- Q2. �Ի����� 1981�� 01�� 01�� ������ ����� ����ϱ�
SELECT * 
FROM EMP
WHERE HIREDATE <= '1981/01/01';

SELECT * 
FROM EMP
WHERE HIREDATE <= '81/01/01';

SELECT *
FROM EMP
WHERE HIREDATE <= TO_DATE('1981/01/01', 'YYYY/MM/DD');

SELECT *
FROM EMP
WHERE HIREDATE <= TO_DATE('01/01/1981','DD/MM/YYYY');

SELECT *
FROM EMP
WHERE HIREDATE <= TO_DATE('1981-01-01', 'YYYY-MM-DD');

SELECT *
FROM EMP
WHERE HIREDATE <= TO_DATE('01-01-1981','DD-MM-YYYY');

SELECT *
FROM EMP
WHERE HIREDATE <= '1981-01-01';

-- Q3. �μ���ȣ�� 10�̰� ������ MANAGER �� ����� ����ϱ�
SELECT *
FROM EMP
WHERE DEPTNO = 10 
    AND JOB = 'MANAGER';

-- �μ���ȣ�� 10�̰ų� ������ MANAGER �� ����� ����ϱ�
SELECT *
FROM EMP
WHERE DEPTNO = 10 
    OR JOB = 'MANAGER';
    
    
-- Q4. 10�� �μ��� �Ҽӵ� ����� �����ϰ� ������ ����� ������ ����ϱ�

SELECT *
FROM EMP
WHERE DEPTNO != 10;

SELECT *
FROM EMP
WHERE DEPTNO <> 10;

SELECT *
FROM EMP
WHERE DEPTNO ^= 10;

SELECT *
FROM EMP
WHERE NOT DEPTNO = 10;

SELECT *
FROM EMP
MINUS
SELECT *
FROM EMP
WHERE DEPTNO = 10;

-- Q5. �޿��� 1000���� 1500 ������ ����� ����ϱ�
SELECT *
FROM EMP
WHERE SAL >= 1000
    AND SAL <= 1500;

SELECT *
FROM EMP
WHERE SAL BETWEEN 1000 AND 1500;

SELECT *
FROM EMP
WHERE SAL>=1000
INTERSECT
SELECT *
FROM EMP
WHERE SAL<=1500;

-- Q6. �޿��� 1000 �̸��̰ų� 1500 �ʰ��� ����� ����ϱ�
SELECT *
FROM EMP
WHERE SAL < 1000
    OR SAL > 1500;

SELECT *
FROM EMP
WHERE NOT (SAL >= 1000 AND SAL <= 1500);

SELECT *
FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 1500;

SELECT *
FROM EMP
WHERE SAL < 1000
UNION
SELECT *
FROM EMP
WHERE SAL > 1500;

SELECT *
FROM EMP
MINUS            
SELECT *     
FROM EMP
WHERE SAL BETWEEN 1000 AND 1500;

-- Q7. Ŀ�̼��� 300�̰ų� 500�̰ų� 1400�� ����� ����ϱ�
SELECT *
FROM EMP
WHERE COMM = 300 
    OR COMM = 500 
    OR COMM = 1400;

SELECT *
FROM EMP
WHERE COMM IN (300,500,1400);

SELECT *
FROM EMP
WHERE COMM = 300
UNION
SELECT *
FROM EMP
WHERE COMM = 500
UNION
SELECT *
FROM EMP
WHERE COMM = 1400;

-- Q8. 1982�⿡ �Ի��� ��� ����ϱ�
SELECT *
FROM EMP
WHERE HIREDATE >= '82/01/01'
    AND HIREDATE <= '82/12/31';
    
SELECT *
FROM EMP
WHERE HIREDATE BETWEEN '82/01/01' 
    AND '82/12/31';

SELECT *
FROM EMP
WHERE  HIREDATE >= '1982/01/01'
    AND HIREDATE <= '1982/12/31';
    
SELECT *
FROM EMP
WHERE  HIREDATE BETWEEN '1982/01/01' AND '1982/12/31';

SELECT *
FROM EMP
WHERE HIREDATE BETWEEN TO_DATE('1982/01/01', 'YYYY/MM/DD') 
    AND TO_DATE('1982/12/31', 'YYYY/MM/DD');

SELECT *
FROM EMP
WHERE HIREDATE BETWEEN TO_DATE('1982-01-01', 'YYYY-MM-DD') 
    AND TO_DATE('1982-12-31', 'YYYY-MM-DD');
    
SELECT *
FROM EMP
WHERE HIREDATE LIKE '82%';

SELECT *
FROM EMP
WHERE SUBSTR(HIREDATE,1,2) = '82';

SELECT *
FROM EMP
WHERE TO_CHAR(HIREDATE, 'YYYY') = '1982';

-- Q9. ��� �̸��� F�� �����ϴ� ����� ����ϱ�
SELECT * 
FROM EMP 
WHERE ENAME LIKE 'F%';

SELECT *
FROM EMP
WHERE SUBSTR(ENAME, 1, 1) = 'F';

SELECT *
FROM EMP
WHERE SUBSTR(ENAME,1,1) = UPPER('f');

SELECT *
FROM EMP
WHERE UPPER(SUBSTR(ENAME, 1, 1)) = 'F';

SELECT * 
FROM EMP 
WHERE ENAME LIKE 'F%'
    OR ENAME LIKE 'f%';
    
-- Q10. �̸��� M �� ���ԵǾ� �ִ� ����� ����ϱ�
SELECT *
FROM EMP
WHERE ENAME LIKE '%M%';

SELECT *
FROM EMP
WHERE SUBSTR(ENAME, 1, 1) = 'M'
    OR SUBSTR(ENAME, 2, 1) = 'M'
    OR SUBSTR(ENAME, 3, 1) = 'M'
    OR SUBSTR(ENAME, 4, 1) = 'M'
    OR SUBSTR(ENAME, 5, 1) = 'M'
    OR SUBSTR(ENAME, 6, 1) = 'M'
    OR SUBSTR(ENAME, 7, 1) = 'M'
    OR SUBSTR(ENAME, 8, 1) = 'M'
    OR SUBSTR(ENAME, 9, 1) = 'M'
    OR SUBSTR(ENAME, 10, 1) = 'M';

-- Q11. �̸��� N���� ������ ����� ����ϱ�
SELECT *
FROM EMP
WHERE ENAME LIKE '%N';

SELECT *
FROM EMP
WHERE SUBSTR(ENAME, -1,1) = 'N';

SELECT *
FROM EMP
WHERE SUBSTR(ENAME, LENGTH(ENAME), 1) = 'N';

SELECT *
FROM EMP
WHERE UPPER(SUBSTR(ENAME, -1, 1)) = 'N';

SELECT *
FROM EMP
WHERE INSTR(ENAME, 'N', -1) = LENGTH(ENAME);

SELECT *
FROM EMP
WHERE SUBSTR(ENAME, 1, 1) = 'N'
    OR SUBSTR(ENAME, 2, 2) = 'N'
    OR SUBSTR(ENAME, 3, 3) = 'N'
    OR SUBSTR(ENAME, 4, 4) = 'N'
    OR SUBSTR(ENAME, 5, 5) = 'N'
    OR SUBSTR(ENAME, 6, 6) = 'N'
    OR SUBSTR(ENAME, 7, 7) = 'N'
    OR SUBSTR(ENAME, 8, 8) = 'N'
    OR SUBSTR(ENAME, 9, 9) = 'N'
    OR SUBSTR(ENAME, 10, 10) = 'N';

-- Q12. �̸��� �� ��° ���ڰ� A�� ����� ����ϱ�
SELECT *
FROM EMP
WHERE ENAME LIKE '_A%';

SELECT *
FROM EMP
WHERE INSTR(ENAME, 'A', 2) = 2;

SELECT *
FROM EMP
WHERE SUBSTR(ENAME, 2, 1) = 'A';
    
SELECT *
FROM EMP
WHERE UPPER(SUBSTR(ENAME, 2, 1)) = 'A';

-- Q13. �̸��� �� ��° ���ڰ� A�� ����� ����ϱ�
SELECT *
FROM EMP
WHERE ENAME LIKE '__A%';

SELECT *
FROM EMP
WHERE INSTR(ENAME, 'A', 3) = 3;

SELECT *
FROM EMP
WHERE SUBSTR(ENAME, 3, 1) = 'A';
    
SELECT *
FROM EMP
WHERE UPPER(SUBSTR(ENAME, 3, 1)) = 'A';


-- Q14. �̸��� A�� ���ԵǾ� ���� ���� ����� ����ϱ�
SELECT *
FROM EMP
WHERE ENAME NOT LIKE '%A%';

SELECT *
FROM EMP
WHERE INSTR(ENAME, 'A') = 0;

SELECT *
FROM EMP
MINUS
SELECT *
FROM EMP
WHERE ENAME LIKE '%A%';

SELECT *
FROM EMP
WHERE NOT INSTR(ENAME, 'A') > 0;

SELECT *
FROM EMP
WHERE LENGTH(REPLACE(ENAME, 'A', '')) = LENGTH(ENAME);

-- CEIL, FLOOR �Լ��� ���� ����ϱ�
SELECT CEIL(3.14),
    FLOOR(3.14),
    CEIL(-3.14),
    FLOOR(-3.14)
FROM DUAL;

-- MOD �Լ��� ����Ͽ� ������ �� ����ϱ�
SELECT MOD(15,6),
    MOD(10,2),
    MOD(11,2)
FROM DUAL;

-- SYSDATE �Լ��� ����Ͽ� ��¥ ����ϱ�
SELECT SYSDATE AS NOW,
    SYSDATE - 1 AS YESTERDAY,
    SYSDATE + 1 AS TOMORROW
FROM DUAL;

-- 3���� �� ��¥ ���ϱ�
SELECT SYSDATE,
    ADD_MONTHS(SYSDATE, 3)
FROM DUAL;

-- �Ի� 10�ֳ��� �Ǵ� ����� ������ ����ϱ�
SELECT EMPNO, ENAME, HIREDATE,
    ADD_MONTHS(HIREDATE, 120) AS WORK10YEAR
FROM EMP;

--  �Ի� 52�� �̸��� ��� ������ ����ϱ�
SELECT EMPNO, ENAME, HIREDATE, ADD_MONTHS(HIREDATE,624)
FROM EMP
WHERE ADD_MONTHS(HIREDATE,624) > SYSDATE;

--  �Ի�42�� �̸��� ��� ������ ����ϱ�
SELECT EMPNO, ENAME, HIREDATE,
ADD_MONTHS(HIREDATE, 504) AS WORK42YEAR
FROM EMP
WHERE ADD_MONTHS(HIREDATE, 504) > SYSDATE;


-- �Ի��ϰ� ������ ������ ���� ���� ����ϱ�
SELECT EMPNO, ENAME, HIREDATE, SYSDATE,
    MONTHS_BETWEEN(HIREDATE, SYSDATE) AS MONTHS1,
    MONTHS_BETWEEN(SYSDATE, HIREDATE) AS MONTHS2,
    TRUNC(MONTHS_BETWEEN(SYSDATE, HIREDATE)) AS MONTHS3
FROM EMP;

-- NEXT_DAY, LAST_DAY �Լ��� ����Ͽ� ����ϱ�
SELECT SYSDATE,
    NEXT_DAY(SYSDATE, '������'),
    LAST_DAY(SYSDATE)
FROM DUAL;

-- ���ڿ� ���ڿ�(����)�� ���Ͽ� ����ϱ�
SELECT EMPNO, ENAME, EMPNO+50
FROM EMP
WHERE ENAME = 'SCOTT';

SELECT EMPNO, ENAME, EMPNO+'500'
FROM EMP
WHERE ENAME = 'SCOTT';

-- ���ڿ�(����)�� ������ ���Ͽ� ����ϱ�
SELECT 'ABCD' + EMPNO, EMPNO
FROM EMP
WHERE ENAME = 'SCOTT';

-- ��/��/�� ��:��:��
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD HH24:MI:SS')
FROM DUAL;

-- ���� ������ �پ��� �������� ����ϱ�
SELECT SYSDATE,
    TO_CHAR(SYSDATE, 'MM') AS MM,
    TO_CHAR(SYSDATE, 'MON') AS MON,
    TO_CHAR(SYSDATE, 'MONTH') AS MONTH,
    TO_CHAR(SYSDATE, 'DD') AS DD,
    TO_CHAR(SYSDATE, 'DY') AS DY,
    TO_CHAR(SYSDATE, 'DAY') AS DAY
FROM DUAL;

-- ���� ���� ��¥(��) ����ϱ�
SELECT SYSDATE,
    TO_CHAR(SYSDATE, 'MM') AS MM,
    TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = KOREAN') AS MON_KOR,
    TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = JAPANESE') AS MON_JPN,
    TO_CHAR(SYSDATE, 'MON', 'NLS_DATE_LANGUAGE = ENGLISH') AS MON_ENG
FROM DUAL;

-- ���� ���� ��¥(����) ����ϱ�
SELECT SYSDATE,
    TO_CHAR(SYSDATE, 'DD') AS DD,
    TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE = KOREAN') AS DY_KOR,
    TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE = JAPANESE') AS DY_JPN,
    TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE = ENGLISH') AS DY_ENG,
    TO_CHAR(SYSDATE, 'DAY', 'NLS_DATE_LANGUAGE = KOREAN') AS DAY_KOR,
    TO_CHAR(SYSDATE, 'DAY', 'NLS_DATE_LANGUAGE = JAPANESE') AS DAY_JPN,
    TO_CHAR(SYSDATE, 'DAY', 'NLS_DATE_LANGUAGE = ENGLISH') AS DAY_ENG
FROM DUAL;

-- SYSDATE �ð� ���� �����Ͽ� ����ϱ�
SELECT SYSDATE,
    TO_CHAR(SYSDATE, 'HH24:MI:SS') AS HH24MISS,
    TO_CHAR(SYSDATE, 'HH12:MI:SS AM') AS HHMISS_AM,
    TO_CHAR(SYSDATE, 'HH:MI:SS P.M.') AS HHMISS_PM
FROM DUAL;


-- ���� ���� ���� ������ ����Ͽ� �޿� ����ϱ�
SELECT SAL,
    TO_CHAR(SAL, '$999,999') AS SAL_$,
    TO_CHAR(SAL, 'L999,999') AS SAL_L,
    TO_CHAR(SAL, '999,999.00') AS SAL_1,
    TO_CHAR(SAL, '000,999,999.00') AS SAL_2,
    TO_CHAR(SAL, '000999999.99') AS SAL_3,
    TO_CHAR(SAL, '999,999,00') AS SAL_4
FROM EMP;

--  ���� �����Ϳ� ���� �����͸� �����Ͽ� ����ϱ�
SELECT 1300 - '1500',
    '1300' + 1500
FROM DUAL;

-- ���� �����ͳ��� �����Ͽ� ����ϱ�
SELECT '1,300' - '1,500'
FROM DUAL;


-- TO_NUMBER �Լ��� �����Ͽ� ����ϱ�
SELECT TO_NUMBER('1,300', '999,999') - TO_NUMBER('1,500', '999,999')
FROM DUAL;

-- TO_DATE �Լ��� ���� �����͸� ��¥ ������ ��ȯ�ϱ�
SELECT TO_DATE('2024-08-27', 'YYYY-MM-DD') AS TODATE1,
    TO_DATE('20240827', 'YYYY-MM-DD') AS TODATE2
FROM DUAL;

-- 1981�� 6�� 1�� ���Ŀ� �Ի��� ��� ���� ����ϱ�
SELECT *
FROM EMP
WHERE HIREDATE > TO_DATE('1981/06/01', 'YYYY/MM/DD');

-- NVL �Լ��� ����Ͽ� ����ϱ�
SELECT EMPNO, ENAME, SAL, COMM, SAL+COMM,
    NVL(COMM, 0),
    SAL+NVL(COMM,0)
FROM EMP;

-- NVL2 �Լ��� ����Ͽ� ����ϱ�
SELECT EMPNO, ENAME, COMM,
    NVL2(COMM, 'O', 'X'),
    NVL2(COMM, SAL*12+COMM, SAL*12) AS ANNSAL
FROM EMP;

-- DECODE �Լ��� ����Ͽ� ����ϱ�
SELECT EMPNO, ENAME, JOB, SAL,
    DECODE(JOB,
        'MANAGER', SAL*1.1,
        'SALESMAN', SAL*1.05,
        'ANALYST', SAL,
        SAL*1.03) AS UPSAL
FROM EMP;

-- CASE ���� ����Ͽ� ����ϱ�
SELECT EMPNO, ENAME, JOB, SAL,
    CASE JOB
        WHEN 'MANAGER' THEN SAL*1.1
        WHEN 'SALESMAN' THEN SAL*1.05
        WHEN 'ANALYST' THEN SAL
        ELSE SAL*1.03
    END AS UPSAL
FROM EMP;

-- �� ���� ���� ��� ���� �޶����� CASE��
SELECT EMPNO, ENAME, COMM,
    CASE
        WHEN COMM IS NULL THEN '�ش���� ����'
        WHEN COMM = 0 THEN '�������'
        WHEN COMM > 0 THEN '���� : ' || COMM
    END AS COMM_TEXT
FROM EMP;

-- SUM �Լ��� ����Ͽ� �޿� �հ� ����ϱ�
SELECT SUM(SAL)
FROM EMP;

--  SUM �Լ��� ����Ͽ� ��� �̸��� �޿� �հ� ����ϱ�
SELECT ENAME, SUM(SAL)
FROM EMP;

-- �߰� ���� �հ� ���ϱ�
SELECT SUM(COMM)
FROM EMP;

-- �޿� �հ� ���ϱ�
SELECT SUM(DISTINCT SAL),
    SUM(ALL SAL),
    SUM(SAL)
FROM EMP;

-- EMP ���̺��� ������ ���� ���ϱ�
SELECT COUNT(*)
FROM EMP;

-- �μ� ��ȣ�� 30���� ���� �� ���ϱ�
SELECT COUNT(*)
FROM EMP
WHERE DEPTNO = 30;

-- COUNT �Լ��� ����Ͽ� �޿� ���� ���ϱ�
SELECT COUNT(SAL),
    COUNT(DISTINCT SAL),
    COUNT(ALL SAL)
FROM EMP;

-- COUNT �Լ��� ����Ͽ� �߰� ���� �� ���� ����ϱ�
SELECT COUNT(COMM)
FROM EMP;

-- COUNT �Լ��� IS NOT NULL�� ����Ͽ� �߰� ���� �� ���� ����ϱ�
SELECT COUNT(COMM)
FROM EMP
WHERE COMM IS NOT NULL;

-- �μ� ��ȣ�� 10���� ������� �ִ� �޿� ����ϱ�
SELECT MAX(SAL)
FROM EMP
WHERE DEPTNO = 10;

-- �μ� ��ȣ�� 10���� ������� �ּ� �޿� ����ϱ�
SELECT MIN(SAL)
FROM EMP
WHERE DEPTNO = 10;

-- �μ� ��ȣ�� 20�� ����� �Ի��� �� ���� �ֱ� �Ի��� ����ϱ�
SELECT MAX(HIREDATE)
FROM EMP
WHERE DEPTNO = 20;

-- �μ� ��ȣ�� 20�� ����� �Ի��� �� ���� ������ �Ի��� ����ϱ�
SELECT MIN(HIREDATE)
FROM EMP
WHERE DEPTNO = 20;

-- �μ� ��ȣ�� 30�� ������� ��� �޿� ����ϱ�
SELECT AVG(SAL)
FROM EMP
WHERE DEPTNO = 30;

-- �ߺ��� ������ �μ� ��ȣ�� 30�� ��� �޿� ���� ��� �޿� ����ϱ�
SELECT AVG(DISTINCT SAL)
FROM EMP
WHERE DEPTNO = 30;




