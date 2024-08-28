-- ������� �Ի��Ͽ��� �Ի�⵵�� ���� ����ϱ�
SELECT ENAME, HIREDATE,
    TO_CHAR(HIREDATE, 'YY-MM')
FROM EMP;

-- ������� �Ի����� ����ϵ� ���ϱ��� ����ϱ�
SELECT ENAME, HIREDATE,
    TO_CHAR(HIREDATE, 'YYYY/MM/DD DAY')
FROM EMP;

-- ���� ��¥�� �ð� ����ϱ�
SELECT TO_CHAR(SYSDATE, 'YYYY/MM/DD, HH24:MI:SS')
FROM DUAL;

-- �޿��� ����ϸ鼭 ��ȭ ��ȣ �����̱�
SELECT ENAME, TO_CHAR(SAL, 'L999,999')
FROM EMP;

-- Q1. 1981�� 2�� 20�Ͽ� �Ի��� ��� ����ϱ�
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


-- ���� ������ ���� ����
SELECT '100,000' - '50,000'
FROM DUAL;

-- ��ġ ���·� ��ȯ�� �� ����
SELECT TO_NUMBER('100,000','999,999') 
    - TO_NUMBER('50,000','999,999')
FROM DUAL;

-- Q2. DECODE �Լ��� ����Ͽ� ����� �μ���ȣ�� �μ��̸� �����ϱ�
-- 10: ACCOUNTING
-- 20: RESEARCH
-- 30: SALES
-- 40: OPERATIONS
-- �׿�: DEFAULT

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

-- Q3. CASE �Լ��� ����Ͽ� ����� �μ���ȣ�� �μ��̸� �����ϱ�
-- 10: ACCOUNTING
-- 20: RESEARCH
-- 30: SALES
-- 40: OPERATIONS
-- �׿�: DEFAULT

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

-- Q4. ������� �޿� �Ѿ�, ��վ�, �ְ��, �ּҾ��� ����ϱ�
-- ��Ī: �޿��Ѿ�, �޿����, �ִ�޿�, �ּұ޿� 

SELECT SUM(SAL) �޿��Ѿ�,
    AVG(SAL) "�޿����",
    MAX(SAL) AS �ִ�޿�,
    MIN(SAL) AS "�ּұ޿�"
FROM EMP;

SELECT SUM(SAL) AS �޿��Ѿ�,
       AVG(SAL) AS �޿����,
       MAX(SAL) AS �ִ�޿�,
       MIN(SAL) AS �ּұ޿�
FROM EMP;

-- Q5. �ֱٿ� �Ի��� ����� ���� �������� �Ի��� ����� �Ի��� ����ϱ�
SELECT 
    MAX(HIREDATE),
    MIN(HIREDATE)
FROM EMP;

SELECT MAX(HIREDATE) AS YOUNGER,
    MIN(HIREDATE) AS ELDER
FROM EMP;

SELECT 
    MAX(HIREDATE) AS �ֱ��Ի���,
    MIN(HIREDATE) AS ����������Ի���
FROM EMP;

SELECT 
    MAX(HIREDATE) AS "�ֱ� �Ի���",
    MIN(HIREDATE) AS "���� ������ �Ի���"
FROM EMP;

-- ������� Ŀ�̼� �Ѿ��� ����ϱ�
SELECT SUM(COMM) AS "Ŀ�̼� �Ѿ�"
FROM EMP;

-- ��ü ����� �� ����ϱ�
SELECT COUNT(*) AS "����� ��"
FROM EMP;

-- EMP ���̺��� ���� ����ϱ�
SELECT *
FROM EMP;

-- Ŀ�̼��� �޴� ����� �� ����ϱ�
SELECT COUNT(COMM) AS "Ŀ�̼��� �޴� ��� ��"
FROM EMP;

-- Ŀ�̼��� �޴� ����� �� ����ϱ�
SELECT COUNT(*) AS "Ŀ�̼��� �޴� ��� ��"
FROM EMP
WHERE COMM IS NOT NULL;

-- ������ ���� ����ϱ�
SELECT JOB
FROM EMP
ORDER BY JOB;

-- ������ ���� ����ϱ�
SELECT COUNT(JOB) AS "������ ����"
FROM EMP;

-- ���� ������ ���� ����ϱ�
SELECT COUNT(DISTINCT JOB) AS "���� ������ ����"
FROM EMP;

-- �׷��Լ��� ���� ������ ��
SELECT ENAME, MAX(SAL)
FROM EMP;

-- ���� �����ڸ� ����Ͽ� �� �μ��� ��� �޿� ����ϱ�
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

-- GROUP BY���� ����Ͽ� �μ��� ��� �޿� ����ϱ�
SELECT AVG(SAL), DEPTNO
FROM EMP
GROUP BY DEPTNO;

-- �μ� ��ȣ �� ��å�� ��� �޿��� �����ϱ�
SELECT DEPTNO, JOB, AVG(SAL) 
FROM EMP
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

-- GROUP BY���� ���� ������ ��
SELECT ENAME, DEPTNO, AVG(SAL) 
FROM EMP
GROUP BY DEPTNO;

-- �� �μ��� ��å�� ��� �޿��� ���ϵ�, �� ��� �޿��� 2000 �̻��� �׷츸 ����ϱ�
SELECT DEPTNO, JOB, AVG(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
HAVING AVG(SAL) >= 2000
ORDER BY DEPTNO, JOB;

-- HAVING ���� ������� ���� ���
SELECT DEPTNO, JOB, AVG(SAL)
FROM EMP
WHERE AVG(SAL) >= 2000
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

-- HAVING���� ����� ���
SELECT DEPTNO, JOB, AVG(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
HAVING AVG(SAL) >= 2000
ORDER BY DEPTNO, JOB;

-- WHERE���� HAVING���� ����� ���
SELECT DEPTNO, JOB, AVG(SAL)
FROM EMP
WHERE SAL <= 3000
GROUP BY DEPTNO, JOB
HAVING AVG(SAL) >= 2000
ORDER BY DEPTNO, JOB;

-- GROUP BY ���� ����� �׷�ȭ
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), MIN(SAL), SUM(SAL), AVG(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

-- ROLLUP �Լ��� ������ �׷�ȭ
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), MIN(SAL), SUM(SAL), AVG(SAL)
FROM EMP
GROUP BY ROLLUP(DEPTNO, JOB);

-- CUBE �Լ��� ������ �׷�ȭ
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), MIN(SAL), SUM(SAL), AVG(SAL)
FROM EMP
GROUP BY CUBE(DEPTNO, JOB)
ORDER BY DEPTNO, JOB;

-- DEPTNO�� ���� �׷�ȭ�� �� ROLLUP �Լ��� JOB �����ϱ�
SELECT DEPTNO, JOB, COUNT(*)
FROM EMP
GROUP BY DEPTNO, ROLLUP(JOB);

-- JOB�� ���� �׷�ȭ�� �� ROLLUP �Լ��� DEPTNO �����ϱ�
SELECT DEPTNO, JOB, COUNT(*)
FROM EMP
GROUP BY JOB, ROLLUP(DEPTNO);

-- ������ �׷����� ���� ����ϱ�
SELECT DEPTNO, JOB, COUNT(*)
FROM EMP
GROUP BY GROUPING SETS(DEPTNO, JOB)
ORDER BY DEPTNO, JOB;

-- DEPTNO, JOB���� �׷�ȭ ��� ���θ� GROUPING �Լ��� Ȯ���ϱ�
SELECT DEPTNO, JOB, COUNT(*), MAX(SAL), SUM(SAL), AVG(SAL),
    GROUPING(DEPTNO),
    GROUPING(JOB)
FROM EMP
GROUP BY CUBE(DEPTNO, JOB)
ORDER BY DEPTNO, JOB;

-- 10�� �μ��� ���� ��� �̸� ���ϱ�
SELECT ENAME
FROM EMP
WHERE DEPTNO = 10;

-- GROUP BY���� �׷�ȭ�Ͽ� �μ� ��ȣ�� ��� �̸� ����ϱ�
SELECT DEPTNO, ENAME
FROM EMP
GROUP BY DEPTNO, ENAME;

-- �μ��� ��� �̸��� ������ �����Ͽ� ����ϱ�
SELECT DEPTNO,
    LISTAGG(ENAME, ', ')
    WITHIN GROUP(ORDER BY SAL DESC) AS ENAMES
FROM EMP
GROUP BY DEPTNO;

-- �μ���,��å���� �׷�ȭ�Ͽ� �ְ� �޿� ������ ����ϱ�
SELECT DEPTNO, JOB, MAX(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

-- PIVOT �Լ� ����Ͽ� ��å��,�μ��� �ְ� �޿��� 2���� ǥ ���·� ����ϱ�
SELECT *
FROM ( SELECT DEPTNO, JOB, SAL FROM EMP )
PIVOT(
    MAX(SAL)
    FOR DEPTNO IN (10,20,30)
)
ORDER BY JOB;

-- PIVOT �Լ� ����Ͽ� �μ���, ��å�� �ְ� �޿��� 2���� ǥ ���·� ����ϱ�
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

-- FROM ���� ���� ���̺� �����ϱ�
SELECT *
FROM EMP, DEPT
ORDER BY EMPNO;


-- �� �̸��� ���ϴ� ���ǽ����� �����ϱ�
SELECT *
FROM EMP, DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO
ORDER BY EMPNO;

-- ���̺� �̸��� ��Ī���� ǥ���ϱ�
SELECT *
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
ORDER BY EMPNO;

-- �� ���̺� �μ� ��ȣ�� �Ȱ��� �� �̸����� ���ԵǾ� ���� ��
SELECT EMPNO, ENAME, DEPTNO, DNAME, LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO;

-- �� �̸��� ������ ���̺� �̸��� �Բ� ����� ��
SELECT E.EMPNO, E.ENAME, D.DEPTNO, D.DNAME, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
ORDER BY D.DEPTNO, E.EMPNO;

-- �����ȣ, �̸�, �޿�, �ٹ� �μ� ������ �Բ� ����ϵ�, �޿��� 3000�� �̻��� ������ ����ϱ�
SELECT E.EMPNO, E.ENAME, E.SAL, D.DEPTNO, D.DNAME, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
    AND E.SAL >= 3000;

-- �޿� ������ �����ϴ� ���ǽ����� �����ϱ�
SELECT *
FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;

-- ���� ���̺��� �� �� ����Ͽ� ��ü �����ϱ�
SELECT E1.EMPNO, E1.ENAME, E1.MGR,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM EMP E1, EMP E2
WHERE  E1.MGR = E2.EMPNO;

-- ������ �����ϱ�
UPDATE EMP
SET MGR = 7902
WHERE EMPNO = 7369;

-- ���� �����ϱ�
COMMIT;

-- ���� �ܺ� ���� ����ϱ�
SELECT E1.EMPNO, E1.ENAME, E1.MGR,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM EMP E1, EMP E2
WHERE  E1.MGR = E2.EMPNO(+)
ORDER BY E1.EMPNO;

-- ������ �ܺ� ���� ����ϱ�
SELECT E1.EMPNO, E1.ENAME, E1.MGR,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM EMP E1, EMP E2
WHERE  E1.MGR(+) = E2.EMPNO
ORDER BY E1.EMPNO;

-- NATURAL JOIN�� ����Ͽ� �����ϱ�
SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, E.HIREDATE, E.SAL, E.COMM,
    DEPTNO, D.DNAME, D.LOC
FROM EMP E NATURAL JOIN DEPT D
ORDER BY DEPTNO, E.EMPNO;

-- JOIN ~ USING�� ����Ͽ� �����ϱ�
SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, E.HIREDATE, E.SAL, E.COMM,
    DEPTNO, D.DNAME, D.LOC
FROM EMP E JOIN DEPT D USING(DEPTNO)
ORDER BY DEPTNO, E.EMPNO;

-- JOIN ~ ON���� � �����ϱ�
SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, E.HIREDATE, E.SAL, E.COMM,
    E.DEPTNO, 
    D.DNAME, D.LOC
FROM EMP E JOIN DEPT D ON(E.DEPTNO = D.DEPTNO)
WHERE SAL <= 3000
ORDER BY DEPTNO, E.EMPNO;

-- ���� �ܺ� ������ SQL-99 ����ϱ�
SELECT E1.EMPNO, E1.ENAME, E1.MGR,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM EMP E1 LEFT OUTER JOIN EMP E2 ON(E1.MGR = E2.EMPNO)
ORDER BY E1.EMPNO;


-- ������ �ܺ� ������ SQL-99 ����ϱ�
SELECT E1.EMPNO, E1.ENAME, E1.MGR,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM EMP E1 RIGHT OUTER JOIN EMP E2 ON (E1.MGR = E2.EMPNO)
ORDER BY E1.EMPNO;

-- ��ü �ܺ� ������ SQL-99 ����ϱ�
SELECT E1.EMPNO, E1.ENAME, E1.MGR,
    E2.EMPNO AS MGR_EMPNO,
    E2.ENAME AS MGR_ENAME
FROM EMP E1 FULL OUTER JOIN EMP E2 ON(E1.MGR = E2.EMPNO)
ORDER BY E1.EMPNO;

-- ��� �̸��� JONES�� ����� �޿� ����ϱ�
SELECT SAL
FROM EMP
WHERE ENAME = 'JONES';

-- �޿��� 2975���� ���� ��� ���� ����ϱ�
SELECT *
FROM EMP
WHERE SAL > 2975;

-- ���������� JONES�� �޿����� ���� �޿��� �޴� ��� ���� ����ϱ�
SELECT *
FROM EMP
WHERE SAL > (
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'JONES'
);

-- EMP ���̺��� SCOTT���� ���� �Ի��� ��� ��� ����ϱ�
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

-- 20�� �μ��� ���� ��� �� ��ü ����� ��� �޿����� ���� �޿��� �޴� ��� ������ �Ҽ� �μ� ������ ����ϱ�
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

-- IN ������ ����ϱ�
-- �μ� ��ȣ�� 20�̰ų� 30�� ����� ������ ����ϱ�
SELECT *
FROM EMP
WHERE DEPTNO IN (20,30);

-- �� �μ��� �ְ� �޿��� ������ �޿��� �޴� ��� ���� ����ϱ�
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

-- ANY ������ ����ϱ�
-- �� �μ��� �ְ� �޿��� ������ �޿��� �޴� ��� ���� ����ϱ�
SELECT *
FROM EMP
WHERE SAL = ANY(
    SELECT MAX(SAL)
    FROM EMP
    GROUP BY DEPTNO
);

-- SOME ������ ����ϱ�
-- �� �μ��� �ְ� �޿��� ������ �޿��� �޴� ��� ���� ����ϱ�
SELECT *
FROM EMP
WHERE SAL = SOME(
    SELECT MAX(SAL)
    FROM EMP
    GROUP BY DEPTNO
);

-- 30�� �μ� ������� �ִ� �޿����� ���� �޿��� �޴� ��� ���� ����ϱ�
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

-- 30�� �μ� ������� �ּ� �޿����� ���� �޿��� �޴� ��� ���� ����ϱ�
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

-- 30�� �μ� ������� �ּ� �޿����� �� ���� �޿��� �޴� ��� ���� ����ϱ�
SELECT *
FROM EMP
WHERE SAL < ALL (
    SELECT SAL
    FROM EMP
    WHERE DEPTNO = 30
);

-- 30�� �μ� ������� �ִ� �޿����� �� ���� �޿��� �޴� ��� ���� ����ϱ�
SELECT *
FROM EMP
WHERE SAL > ALL (
    SELECT SAL
    FROM EMP
    WHERE DEPTNO = 30
);
