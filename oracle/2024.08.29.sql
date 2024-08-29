-- Q1. �Ҽ� �μ��� ��� �޿��� �μ���ȣ�� �Բ� ����ϱ�
-- ��Ī: �μ� ��ȣ, �޿� ���

SELECT 
    DEPTNO AS "�μ� ��ȣ", 
    AVG(SAL) AS "�޿� ���"
FROM EMP
GROUP BY DEPTNO;

SELECT 
    DEPTNO AS "�μ� ��ȣ", 
    AVG(SAL) AS "�޿� ���"
FROM EMP
GROUP BY DEPTNO 
ORDER BY DEPTNO; 

SELECT '10' "�μ� ��ȣ", AVG(SAL) AS "�޿� ���"
FROM EMP
WHERE DEPTNO = 10
UNION ALL
SELECT '20' "�μ� ��ȣ", AVG(SAL) AS "�޿� ���"
FROM EMP
WHERE DEPTNO = 20
UNION ALL
SELECT '30' "�μ� ��ȣ", AVG(SAL) AS "�޿� ���"
FROM EMP
WHERE DEPTNO = 30;

-- ���� �÷��� �̿��Ͽ� �׷캰�� ����ϱ�
SELECT DEPTNO, JOB, COUNT(*), SUM(SAL)
FROM EMP
GROUP BY DEPTNO, JOB
ORDER BY DEPTNO, JOB;

-- Q2. �μ��� �޿� �Ѿ��� 3000 �̻��� �μ��� ��ȣ�� �μ��� �޿� �Ѿ� ����ϱ�

SELECT DEPTNO, SUM(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING SUM(SAL) >= 3000;

SELECT DEPTNO, SUM(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING SUM(SAL) >= 3000
ORDER BY DEPTNO;

SELECT 
    DEPTNO AS "�μ� ��ȣ", 
    SUM(SAL) AS "�޿� �Ѿ�"
FROM EMP
GROUP BY DEPTNO
HAVING SUM(SAL) >= 3000
ORDER BY DEPTNO;

SELECT 
    DEPTNO AS "�μ� ��ȣ", 
    SUM(SAL) AS "�μ��� �޿� �Ѿ�"
FROM EMP
GROUP BY DEPTNO
HAVING SUM(SAL) >= 3000;


-- Q3. MANAGER�� �����ϰ� �޿� �Ѿ��� 5000 �̻��� ���޺� �޿� �Ѿ� ���ϱ�
-- �޿� �Ѿ��� 5000�� �Ѵ� ���޿� ���ؼ� ���ް� �޿� �Ѿ��� ǥ���ϵ� ������ MANAGER�� ����� ������ �� �޿� �Ѿ׿� ���� �����ϱ�

SELECT JOB, SUM(SAL)
FROM EMP
WHERE JOB NOT LIKE '%MANAGER%'
GROUP BY JOB
HAVING SUM(SAL) >= 5000
ORDER BY SUM(SAL);

SELECT JOB AS "����", SUM(SAL) AS "�޿� �Ѿ�"
FROM EMP
WHERE JOB != 'MANAGER'
GROUP BY JOB
HAVING SUM(SAL) >= 5000
ORDER BY SUM(SAL);

SELECT JOB , SUM(SAL)
FROM EMP
GROUP BY JOB
HAVING JOB !='MANAGER' AND SUM(SAL) >=5000
ORDER BY SUM(SAL);

select job as ����, sum(sal)as �޿��Ѿ�
from emp
where job != 'MANAGER'
group by job
having sum(sal) >= 5000
order by sum(sal);

SELECT JOB, SUM(SAL)
FROM EMP
GROUP BY JOB
HAVING SUM(SAL) >= 5000
    AND JOB != 'MANAGER'
ORDER BY SUM(SAL);

SELECT 
    JOB,
    SUM(SAL) AS TOTAL_SALARY
FROM EMP
WHERE JOB != 'MANAGER'
GROUP BY JOB
HAVING SUM(SAL) >= 5000
ORDER BY JOB;

SELECT JOB, SUM(SAL)
FROM EMP
WHERE JOB <> 'MANAGER'
GROUP BY  JOB
HAVING SUM(SAL) >= 5000
ORDER BY SUM(SAL);

SELECT JOB, SUM(SAL)
FROM EMP
WHERE JOB ^= 'MANAGER'
GROUP BY  JOB
HAVING SUM(SAL) >= 5000
ORDER BY SUM(SAL);

-- �μ��� ��� �޿� �� �ְ� �޿� ����ϱ�
SELECT MAX(AVG(SAL))
FROM EMP
GROUP BY DEPTNO
ORDER BY DEPTNO;

-- Q4. �����ȣ�� 7788�� ����� �̸��� �Ҽ� �μ����� ����ϱ�

SELECT DEPTNO
FROM EMP
WHERE EMPNO = 7788;

SELECT DNAME
FROM DEPT
WHERE DEPTNO = 20;

SELECT E.ENAME, D.DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
    AND E.EMPNO = 7788;

SELECT 
    E.ENAME AS "��� �̸�", 
    D.DNAME AS "�μ���"
FROM EMP E JOIN DEPT D ON E.DEPTNO = D.DEPTNO
WHERE E.EMPNO = 7788;

select e.ename, d.dname
from emp e natural join dept d
where e.empno = 7788;

SELECT 
    EMP.ENAME,  
    DEPT.DNAME
FROM EMP JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
WHERE EMPNO = 7788;

SELECT ENAME, DEPT.DNAME
FROM EMP, DEPT
WHERE  EMP.DEPTNO = DEPT.DEPTNO 
    AND EMPNO = 7788;

SELECT E.ENAME, D.DNAME
FROM EMP E NATURAL JOIN DEPT D
WHERE E.EMPNO = 7788
ORDER BY E.EMPNO, E.ENAME;

SELECT E.ENAME, D.DNAME
FROM EMP E JOIN DEPT D USING (DEPTNO)
WHERE E.EMPNO = 7788;

-- Q5. ������� �޿� ����� ����ϱ� (�÷��� ����̸�,�޿�,��޸� ǥ�����ּ���.)

select ename, sal, grade
from emp, salgrade
where sal between losal and hisal;

SELECT 
    E.ENAME AS "����̸�", 
    E.SAL AS "�޿�", 
    S.GRADE AS "���"
FROM EMP E JOIN SALGRADE S 
    ON E.SAL BETWEEN S.LOSAL AND S.HISAL;

SELECT E.ENAME, E.SAL, S.GRADE
FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND HISAL;

-- Q6. ����� �̸��� �Ҽӵ� �μ��� �̸��� �޿�, �޿��� �� ��������� ����ϱ�

select e.ename, d.dname,e.sal, s.grade
from emp e, dept d, salgrade s
where e.deptno = d.deptno 
    and e.sal between s.losal and s.hisal;

SELECT 
    E.ENAME AS "����̸�", 
    D.DNAME AS "�μ��̸�", 
    E.SAL AS "�޿�", 
    S.GRADE AS "�޿����"
FROM EMP E 
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
JOIN SALGRADE S ON E.SAL BETWEEN S.LOSAL AND S.HISAL;

SELECT ENAME, DNAME, SAL, GRADE
FROM EMP, DEPT, SALGRADE
WHERE EMP.DEPTNO=DEPT.DEPTNO
AND EMP.SAL BETWEEN LOSAL AND HISAL;

SELECT
    E.ENAME AS "����̸�",
    E.JOB AS "�ҼӺμ��̸�",
    E.SAL AS "�޿�",
    S.GRADE AS "�޿����"
FROM EMP E JOIN SALGRADE S
    ON E.SAL BETWEEN S.LOSAL AND S.HISAL;

SELECT E.ENAME, D.DNAME, E.SAL, S.GRADE
FROM EMP E, DEPT D, SALGRADE S
WHERE E.DEPTNO = D.DEPTNO
    AND E.SAL BETWEEN S.LOSAL AND S.HISAL;
    
SELECT E.ENAME, D.DNAME, E.SAL, S.GRADE
FROM EMP E, DEPT D, SALGRADE S
WHERE E.DEPTNO = D.DEPTNO AND
    E.SAL BETWEEN LOSAL AND HISAL;   
    
SELECT DISTINCT
    E.ENAME AS "����̸�", 
    D.DNAME AS "�μ��̸�", 
    E.SAL AS "�޿�", 
    S.GRADE AS "�޿����"
FROM EMP E
JOIN DEPT D USING(DEPTNO)
JOIN SALGRADE S ON E.SAL BETWEEN S.LOSAL AND S.HISAL;    
    
SELECT
    E.ENAME AS "����̸�", 
    D.DNAME AS "�μ��̸�", 
    E.SAL AS "�޿�", 
    S.GRADE AS "�޿����"
FROM EMP E
JOIN DEPT D USING(DEPTNO)
JOIN SALGRADE S ON E.SAL BETWEEN S.LOSAL AND S.HISAL;        

-- ����̸��� ���� ��� �̸��� ����ϱ�
SELECT 
    E1.ENAME AS "����̸�", 
    E2.ENAME AS "���� ��� �̸�"
FROM EMP E1, EMP E2 
WHERE E1.MGR = E2.EMPNO;

-- JION ~ ON���� ����Ͽ� ����ϱ�
SELECT  E1.ENAME || '�� ���� ����� ' || E2.ENAME
FROM EMP E1 JOIN EMP E2 ON E1.MGR = E2.EMPNO;

-- Q7. SCOTT ���� �޿��� ���� �޴� ����� ����ϱ�
SELECT SAL
FROM EMP
WHERE ENAME='SCOTT';

SELECT *
FROM EMP
WHERE SAL > 3000;

SELECT *
FROM EMP
WHERE SAL > (
    SELECT SAL
    FROM EMP
    WHERE ENAME='SCOTT'
);

select ename, sal
from emp
where sal > ( select sal from emp where ename = 'SCOTT');

SELECT ENAME AS "����̸�", SAL AS "�޿�"
FROM EMP
WHERE SAL > (SELECT SAL 
            FROM EMP 
             WHERE ENAME = 'SCOTT');
             
SELECT ENAME, SAL
FROM EMP
WHERE SAL > (
    SELECT SAL
    FROM EMP
    WHERE ENAME ='SCOTT');  
     
SELECT ENAME, SAL, DEPTNO
FROM EMP
WHERE SAL> (
    SELECT SAL
    FROM EMP
    WHERE ENAME = 'SCOTT'
 );
 
 
-- Q8. SCOTT�� ������ �μ����� �ٹ��ϴ� ����� �̸��� �μ���ȣ�� ����ϱ�

SELECT DEPTNO
FROM EMP
WHERE ENAME = 'SCOTT';

SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO = 20;

SELECT ENAME, DEPTNO
FROM EMP
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM EMP
    WHERE ENAME = 'SCOTT'
);

SELECT ENAME AS "����̸�", DEPTNO AS "�μ���ȣ"
FROM EMP
WHERE DEPTNO = (SELECT DEPTNO 
                FROM EMP 
                WHERE ENAME = 'SCOTT');

select ename, deptno
from emp
where deptno = (select deptno from emp where ename = 'SCOTT');

SELECT
     E1.ENAME,
     E1.DEPTNO
FROM EMP E1
JOIN EMP E2 ON E1.DEPTNO = E2.DEPTNO
WHERE E2.ENAME = 'SCOTT';

SELECT E.ENAME, E.DEPTNO
FROM EMP E , EMP E1
WHERE E.DEPTNO = E1.DEPTNO
    AND E1.ENAME = 'SCOTT';


-- Q9. �ּ� �޿��� �޴� ����� �̸�, ��� ����, �޿� ����ϱ�
SELECT MIN(SAL)
FROM EMP;

SELECT ENAME, JOB, SAL
FROM EMP
WHERE SAL = 800;
 
SELECT ENAME, JOB, SAL
FROM EMP
WHERE SAL = (
    SELECT MIN(SAL)
    FROM EMP
);
 
select ename, job, sal
from emp
where sal = (select min(sal) from emp);
 
SELECT ENAME AS "��� �̸�", JOB AS "��� ����", SAL AS "�޿�"
FROM EMP
WHERE SAL = (SELECT MIN(SAL)
             FROM EMP);
 
SELECT E.ENAME, E.JOB, E.SAL
FROM EMP E
WHERE E.SAL =(
    SELECT MIN(SAL)
    FROM EMP
);
 
-- Q10. 30�� �μ����� �ּ� �޿��� ���� �� �μ��� �ּ� �޿��� ���� �ּ� �޿����� ū �μ��� ����ϱ�
SELECT DEPTNO, MIN(SAL) 
FROM EMP
GROUP BY DEPTNO
HAVING MIN(SAL) > (
    SELECT MIN(SAL)
    FROM EMP
    WHERE DEPTNO = 30 
);
 
select deptno
from emp
group by deptno
having min(sal) > (select min(sal) from emp where deptno = 30); 
 
SELECT
     MIN(SAL),
     DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING MIN(SAL) > (
     SELECT MIN(SAL)
     FROM EMP
     WHERE DEPTNO = 30
);
 
-- Q11. �μ��� �ּ� �޿��� �޴� ����� �����ȣ�� �̸��� ����ϱ�
SELECT DEPTNO, MIN(SAL)
FROM EMP
GROUP BY DEPTNO;

SELECT MIN(SAL)
FROM EMP
GROUP BY DEPTNO;

SELECT EMPNO, ENAME
FROM EMP
WHERE SAL = 950
    OR SAL = 800
    OR SAL = 1300; 

SELECT EMPNO, ENAME
FROM EMP
WHERE SAL IN(
    SELECT MIN(SAL)
    FROM EMP
    GROUP BY DEPTNO
);

SELECT EMPNO AS "��� ��ȣ", ENAME AS "��� �̸�"
FROM EMP E
WHERE SAL = (SELECT MIN(SAL)
             FROM EMP
             WHERE DEPTNO = E.DEPTNO);

select empno, ename
from emp
where sal = any(select min(sal) from emp group by deptno);

SELECT DEPTNO, ENAME
FROM EMP E
WHERE SAL = (
    SELECT MIN(SAL)
    FROM EMP E1
    WHERE E1.DEPTNO = E.DEPTNO );

SELECT DEPTNO, ENAME
FROM EMP
WHERE SAL = ANY (
    SELECT MIN(SAL)
    FROM EMP
    GROUP BY DEPTNO
);

SELECT DEPTNO, ENAME
FROM EMP
WHERE SAL = ANY (
    SELECT MIN(SAL)
    FROM EMP
    GROUP BY DEPTNO )
ORDER BY DEPTNO;

-- Q12. ������ SALESMAN �� �ƴϸ鼭 �޿��� ������ SALESMAN ���� �޿��� ���� ����� �����ȣ,�̸�,����,�޿��� ����ϱ�
SELECT SAL
FROM EMP
WHERE JOB ='SALESMAN';

SELECT EMPNO, ENAME, JOB, SAL
FROM EMP
WHERE SAL < 1600
    AND JOB <> 'SALESMAN';
    
SELECT EMPNO, ENAME, JOB, SAL
FROM EMP
WHERE SAL < ANY(SELECT SAL
                FROM EMP
                WHERE JOB ='SALESMAN')
    AND JOB <> 'SALESMAN';

SELECT EMPNO, ENAME, JOB, SAL
FROM EMP
WHERE SAL < ANY(SELECT SAL
                FROM EMP
                WHERE JOB ='SALESMAN')
    AND JOB != 'SALESMAN';

SELECT EMPNO, ENAME, JOB, SAL
FROM EMP
WHERE SAL < ANY(SELECT SAL
                FROM EMP
                WHERE JOB ='SALESMAN')
    AND JOB ^= 'SALESMAN';

select empno,ename,job,sal
from emp
where job != 'SALESMAN' and
    sal < any(select sal from emp where job = 'SALESMAN');

SELECT EMPNO AS "�����ȣ", ENAME AS "����̸�", JOB AS "����", SAL AS "�޿�"
FROM EMP
WHERE JOB != 'SALESMAN' AND 
    SAL < ANY(SELECT SAL
    FROM EMP 
    WHERE JOB = 'SALESMAN');
    
SELECT DEPTNO, ENAME, JOB, SAL
FROM EMP
WHERE NOT JOB = 'SALESMAN'
    AND SAL < ANY (SELECT SAL
                    FROM EMP
                    WHERE JOB = 'SALESMAN');    
    
SELECT MIN(SAL)
FROM EMP
WHERE JOB = 'SALESMAN';

-- ����� �ٸ�.
SELECT EMPNO, ENAME, JOB, SAL
FROM EMP
WHERE SAL < ALL(SELECT SAL
                FROM EMP
                WHERE JOB ='SALESMAN')
    AND JOB <> 'SALESMAN';
    
-- �������� ��� ���� �����ϴ� ���
SELECT DNAME
FROM DEPT
WHERE DEPTNO = 10;

SELECT *
FROM EMP
WHERE EXISTS (
    SELECT DNAME
    FROM DEPT
    WHERE DEPTNO = 10
);
    
-- �������� ��� ���� �������� �ʴ� ���
SELECT *
FROM EMP
WHERE EXISTS (
    SELECT DNAME
    FROM DEPT
    WHERE DEPTNO = 50
);  
    
-- ���߿� �������� ����ϱ�
SELECT *
FROM EMP
WHERE (DEPTNO, SAL) IN(
    SELECT DEPTNO, MAX(SAL)
    FROM EMP
    GROUP BY DEPTNO
);
    
-- �ζ��� �� ����ϱ�
SELECT E10.EMPNO, E10.ENAME, E10.DEPTNO, D.DNAME, D.LOC
FROM (SELECT * FROM EMP WHERE DEPTNO= 10) E10,
    (SELECT * FROM DEPT) D
WHERE E10.DEPTNO = D.DEPTNO;
    
-- WITH�� ����ϱ�    
WITH
E10 AS (SELECT * FROM EMP WHERE DEPTNO= 10),
D AS (SELECT * FROM DEPT)
SELECT E10.EMPNO, E10.ENAME, E10.DEPTNO, D.DNAME, D.LOC
FROM E10, D
WHERE E10.DEPTNO = D.DEPTNO;

-- SELECT ���� �������� ����ϱ�
SELECT EMPNO, ENAME, JOB, SAL, (
        SELECT GRADE
        FROM SALGRADE
        WHERE E.SAL BETWEEN LOSAL AND HISAL
    ) AS SALGRADE,
    DEPTNO, (
        SELECT DNAME
        FROM DEPT
        WHERE E.DEPTNO = DEPT.DEPTNO
    ) AS DNAME
FROM EMP E;


-- DEPT ���̺��� �����ؼ� DEPT_TEMP ���̺� �����
CREATE TABLE DEPT_TEMP
    AS SELECT * FROM DEPT;

-- DEPT_TEMP ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM DEPT_TEMP;

-- DEPT_TEMP ���̺� ������ �߰��ϱ�
INSERT INTO DEPT_TEMP (DEPTNO, DNAME, LOC) 
VALUES (50, 'DATABASE','SEOUL');

-- DEPT_TEMP ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM DEPT_TEMP;

-- DEPT_TEMP ���̺� ������ �߰��ϱ�
INSERT INTO DEPT_TEMP (DEPTNO, DNAME, LOC) 
VALUES (60, 'JAVA');

-- DEPT_TEMP ���̺� ������ �߰��ϱ�
INSERT INTO DEPT_TEMP (DEPTNO, DNAME, LOC) 
VALUES (60, 'NETWORK', 'BUSAN', 'WRONG');

-- DEPT_TEMP ���̺� ������ �߰��ϱ�
INSERT INTO DEPT_TEMP (DEPTNO, DNAME, LOC) 
VALUES ('WRONG', 'NETWORK', 'BUSAN');

-- DEPT_TEMP ���̺� ������ �߰��ϱ�
INSERT INTO DEPT_TEMP (DEPTNO, DNAME, LOC) 
VALUES (600, 'NETWORK', 'BUSAN');    

-- DEPT_TEMP ���̺��� ���� Ȯ���ϱ�
DESC DEPT_TEMP;

-- INSERT���� �� �������� ������ �߰��ϱ�
INSERT INTO DEPT_TEMP 
VALUES (60, 'NETWORK', 'BUSAN'); 

-- DEPT_TEMP ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM DEPT_TEMP;

-- NULL�� �����Ͽ� �Է��ϱ�
INSERT INTO DEPT_TEMP (DEPTNO, DNAME, LOC) 
VALUES (70, ' WEB', NULL); 

-- DEPT_TEMP ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM DEPT_TEMP;

-- �� ���� ���ڿ��� NULL�� �Է��ϱ�
INSERT INTO DEPT_TEMP (DEPTNO, DNAME, LOC) 
VALUES (80, 'MOBILE', ''); 

-- DEPT_TEMP ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM DEPT_TEMP;

-- �� �����͸� ���� �ʴ� ������� NULL ������ �Է��ϱ�
INSERT INTO DEPT_TEMP (DEPTNO, LOC) 
VALUES (90, 'INCHEON'); 

-- DEPT_TEMP ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM DEPT_TEMP;

-- EMP ���̺��� �����ؼ� EMP_TEMP ���̺� �����
CREATE TABLE EMP_TEMP
    AS SELECT * FROM EMP WHERE 1 <> 1;

-- EMP_TEMP ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM EMP_TEMP;

-- INSERT ������ ��¥ ������ �Է��ϱ�
INSERT INTO EMP_TEMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (9999, 'ȫ�浿', 'PRESIDNET', NULL, '2001/01/01', 5000, 1000, 10);

-- EMP_TEMP ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM EMP_TEMP;

-- INSERT ������ ��¥ ������ �Է��ϱ�(��¥ ���̿� - �Է�)
INSERT INTO EMP_TEMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (1111, '������', 'MANAGER', 9999, '2001-01-05', 4000, NULL, 20);

-- EMP_TEMP ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM EMP_TEMP;

-- ��¥ ������ ������ �ݴ�� ���� ��
INSERT INTO EMP_TEMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (2111, '�̼���', 'MANAGER', 9999, '07/01/2001', 4000, NULL, 20);

-- TO_DATE �Լ��� ����Ͽ� ��¥ ������ �Է��ϱ�
INSERT INTO EMP_TEMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (2111, '�̼���', 'MANAGER', 9999, TO_DATE('07/01/2001','DD/MM/YYYY'), 4000, NULL, 20);

-- EMP_TEMP ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM EMP_TEMP;

-- SYSDATE�� ����Ͽ� ��¥ ������ �Է��ϱ�
INSERT INTO EMP_TEMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
VALUES (3111, '��û��', 'MANAGER', 9999, SYSDATE, 4000, NULL, 30);

-- EMP_TEMP ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM EMP_TEMP;

-- ���������� ���� ������ �߰��ϱ�
INSERT INTO EMP_TEMP(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
    SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, E.HIREDATE, E.SAL, E.COMM, E.DEPTNO
    FROM EMP E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
        AND S.GRADE = 1;

-- EMP_TEMP ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM EMP_TEMP;

-- DETP ���̺��� �����ؼ� DETP_TEMP2 ���̺� �����
CREATE TABLE DEPT_TEMP2
    AS SELECT * FROM DEPT;

-- DEPT_TEMP2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM DEPT_TEMP2;

-- DEPT_TEMP2 ���̺� ������Ʈ�ϱ�
UPDATE DEPT_TEMP2
SET LOC = 'SEOUL';

-- DEPT_TEMP2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM DEPT_TEMP2;

-- ROLLBACK���� ���̺� ������ ���� ���·� �ǵ�����
ROLLBACK;

-- DEPT_TEMP2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM DEPT_TEMP2;

-- ���̺� ������ �� �Ϻκи� �����ϱ�
UPDATE DEPT_TEMP2
SET DNAME = 'DATABASE',
    LOC = 'SEOUL'
WHERE DEPTNO = 40;

-- DEPT_TEMP2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM DEPT_TEMP2;

-- ���������� ������ �Ϻκ� �����ϱ�
UPDATE DEPT_TEMP2
SET (DNAME, LOC) = (
    SELECT DNAME, LOC
    FROM DEPT
    WHERE DEPTNO = 40
)
WHERE DEPTNO =40;

-- DEPT_TEMP2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM DEPT_TEMP2;

-- ���������� ������ �Ϻκ� �����ϱ�
UPDATE DEPT_TEMP2
SET DNAME = (
    SELECT DNAME
    FROM DEPT
    WHERE DEPTNO = 40
), LOC = (
        SELECT LOC
        FROM DEPT
        WHERE DEPTNO = 40
)
WHERE DEPTNO =40;

-- DEPT_TEMP2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM DEPT_TEMP2;

-- UPDATE���� WHERE���� �������� ����ϱ�
UPDATE DEPT_TEMP2
SET LOC = 'SEOUL'
WHERE DEPTNO = (
    SELECT DEPTNO
    FROM DEPT_TEMP2
    WHERE DNAME = 'OPERATIONS'
);

-- DEPT_TEMP2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM DEPT_TEMP2;

-- EMP ���̺��� �����ؼ� EMP_TEMP2 ���̺� �����
CREATE TABLE EMP_TEMP2
    AS SELECT * FROM EMP;
    
-- EMP_TEMP2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM EMP_TEMP2;   

-- WHERE���� ����Ͽ� ������ �Ϻκи� �����ϱ�
DELETE FROM EMP_TEMP2
WHERE JOB = 'MANAGER';

-- EMP_TEMP2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM EMP_TEMP2;  

-- WHERE���� ���������� ����ؼ� ������ �Ϻθ� �����ϱ�
DELETE FROM EMP_TEMP2
WHERE EMPNO IN(
    SELECT E.EMPNO
    FROM EMP_TEMP2 E, SALGRADE S
    WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
    AND S.GRADE = 3
    AND DEPTNO = 30
);

-- EMP_TEMP2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM EMP_TEMP2;  

-- ���̺� �ִ� ��ü ������ �����ϱ�
DELETE FROM EMP_TEMP2;

-- EMP_TEMP2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM EMP_TEMP2;  
    
-- EMP_TEMP2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM EMP_TEMP2;     

-- TCL
COMMIT;









    