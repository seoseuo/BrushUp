-- Q1. ��ü ��� �� ALLEN�� ���� ��å(JOB)�� ������� ��å,�����ȣ,�̸�,�޿�,�μ���ȣ,�μ��̸��� ����ϱ�
SELECT JOB
FROM EMP
WHERE ENAME = 'ALLEN';

SELECT E.JOB, E.EMPNO, E.ENAME, E.SAL, E.DEPTNO, D.DNAME
FROM EMP E, DEPT D
WHERE JOB = 'SALESMAN'
    AND E.DEPTNO = D.DEPTNO;

SELECT E.JOB, E.EMPNO, E.ENAME, E.SAL, E.DEPTNO, D.DNAME
FROM EMP E, DEPT D
WHERE JOB = 'SALESMAN'
    AND E.DEPTNO = D.DEPTNO
ORDER BY SAL DESC , EMPNO DESC;

SELECT E.JOB, E.EMPNO, E.ENAME, E.SAL, E.DEPTNO, D.DNAME
FROM EMP E, DEPT D
WHERE JOB = (
    SELECT JOB
    FROM EMP
    WHERE ENAME = 'ALLEN'
)
    AND E.DEPTNO = D.DEPTNO
ORDER BY SAL DESC , EMPNO DESC;

select job, empno, ename, sal, e.deptno,dname
from emp e,dept d
where e.deptno =30 and e.deptno = d.deptno and job = (select job from emp where ename = 'ALLEN');


SELECT E.JOB,E.EMPNO,E.ENAME,E.SAL,D.DEPTNO,D.DNAME
FROM EMP E ,DEPT D
WHERE  E.DEPTNO = D.DEPTNO
AND JOB IN ( SELECT JOB
                FROM EMP
                WHERE ENAME = 'ALLEN'
                );

SELECT E.JOB AS "JOB",
    E.EMPNO AS "EMPNO",
    E.ENAME AS "ENAME",
    E.SAL AS "SAL",
    E.DEPTNO AS "DEPTNO",
    D.DNAME AS "DNAME"
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
WHERE E.JOB = (SELECT JOB FROM EMP WHERE ENAME = 'ALLEN')
ORDER BY SAL DESC, EMPNO DESC;

SELECT JOB, EMPNO, ENAME, SAL, DEPTNO, DNAME
FROM EMP
JOIN DEPT USING (DEPTNO)
WHERE JOB = (
     SELECT JOB
     FROM EMP
     WHERE ENAME = 'ALLEN'
);

SELECT E.JOB, E.EMPNO, E.ENAME, E.SAL, E.DEPTNO, D.DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND E.JOB IN (SELECT JOB
                FROM EMP
                WHERE JOB = 'SALESMAN');
                
SELECT E.JOB, E.EMPNO, E.ENAME, E.SAL, E.DEPTNO, D.DNAME
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND E.JOB IN (SELECT JOB
                FROM EMP
                WHERE JOB = 'SALESMAN')
ORDER BY SAL DESC;

-- Q2. ��ü ����� ��� �޿�(SAL)���� ���� �޿��� �޴� 
-- ������� �����ȣ, ����̸�, �μ��̸�, �Ի���, �μ�����, �޿�, �޿� ��� ������ ����ϱ�
-- �� ����� �� �޿��� ���� ������ �����ϵ� �޿��� ���� ��쿡�� ��� ��ȣ�� �������� ������������ �����ϼ���.

SELECT AVG(SAL)
FROM EMP;

SELECT E.EMPNO, E.ENAME, D.DNAME, E.HIREDATE, D.LOC, E.SAL, S.GRADE
FROM EMP E, DEPT D, SALGRADE S
WHERE E.DEPTNO = D.DEPTNO
    AND E.SAL BETWEEN S.LOSAL AND S.HISAL
    AND SAL > 2073
ORDER BY E.SAL DESC, E.EMPNO;

SELECT E.EMPNO, E.ENAME, D.DNAME, E.HIREDATE, D.LOC, E.SAL, S.GRADE
FROM EMP E, DEPT D, SALGRADE S
WHERE E.DEPTNO = D.DEPTNO
    AND E.SAL BETWEEN S.LOSAL AND S.HISAL
    AND SAL > (
        SELECT AVG(SAL)
        FROM EMP
    )
ORDER BY E.SAL DESC, E.EMPNO;

SELECT E.EMPNO, E.ENAME, E.ENAME, E.HIREDATE, D.LOC, E.SAL, S.GRADE
FROM EMP E, SALGRADE S, DEPT D
WHERE E.DEPTNO = D.DEPTNO 
AND SAL > (SELECT AVG(SAL)
                FROM EMP)
AND E.SAL BETWEEN S.LOSAL AND S.HISAL
ORDER BY E.SAL DESC, EMPNO ASC;

select empno,ename,dname,hiredate,loc,sal,grade
from emp e,dept d,salgrade s
where e.deptno = d.deptno and 
sal between losal and hisal and
sal > (select avg(sal) from emp)
order by sal desc,empno;

SELECT EMP.EMPNO, EMP.ENAME, DEPT.DNAME, EMP.HIREDATE, DEPT.LOC, EMP.SAL, SALGRADE.GRADE
FROM EMP
JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
JOIN SALGRADE ON EMP.SAL BETWEEN SALGRADE.LOSAL AND SALGRADE.HISAL
    WHERE SAL > (
     SELECT AVG(SAL)
     FROM EMP
)
ORDER BY SAL DESC, EMPNO ASC;

SELECT E.EMPNO, E.ENAME, D.DNAME, E.HIREDATE, D.LOC, E.SAL, S.GRADE
FROM EMP E JOIN DEPT D ON E.DEPTNO = D.DEPTNO
    JOIN SALGRADE S ON E.SAL BETWEEN S.LOSAL AND S.HISAL
WHERE E.SAL > (SELECT AVG(SAL) FROM EMP)
ORDER BY E.SAL DESC, E.EMPNO ASC;

SELECT E.EMPNO, E.ENAME, D.DNAME, E.HIREDATE, D.LOC, E.SAL, S.GRADE
FROM EMP E JOIN DEPT D USING(DEPTNO), SALGRADE S
WHERE SAL > (
    SELECT AVG(SAL)
    FROM EMP) 
    AND SAL BETWEEN S.LOSAL AND S.HISAL
ORDER BY SAL DESC, EMPNO ASC;

SELECT E.EMPNO,E.ENAME,D.DNAME,E.HIREDATE,D.LOC,E.SAL,S.GRADE
FROM EMP E,DEPT D,SALGRADE S
WHERE E.DEPTNO = D.DEPTNO
AND E.SAL BETWEEN S.LOSAL AND S.HISAL
AND SAL > ( SELECT AVG(SAL)
             FROM EMP)
ORDER BY SAL DESC,EMPNO;

SELECT E.EMPNO, E.ENAME, D.DNAME, TO_CHAR(E.HIREDATE, 'YYYY-MM-DD') AS HIREDATE, D.LOC, E.SAL, S.GRADE
FROM EMP E, DEPT D, SALGRADE S
WHERE SAL > (
    SELECT AVG(SAL)
    FROM EMP
)
AND E.DEPTNO = D.DEPTNO
AND E.SAL BETWEEN S.LOSAL AND S.HISAL
ORDER BY E.SAL DESC, E.EMPNO;

SELECT E.EMPNO, E.ENAME, D.DNAME, E.HIREDATE, D.LOC, E.SAL,S.GRADE        
FROM EMP E JOIN DEPT D ON E.DEPTNO =D.DEPTNO
JOIN SALGRADE S ON E.SAL BETWEEN S.LOSAL AND S.HISAL
WHERE E.SAL > (
            SELECT AVG(SAL)
            FROM EMP);

-- Q3. 10�� �μ��� �ٹ��ϴ� ��� �� 30�� �μ����� �������� �ʴ� ��å�� ���� 
-- ������� �����ȣ, ����̸�, ��å, �μ���ȣ, �μ���, �μ������� ����ϱ�
SELECT *
FROM EMP
WHERE DEPTNO = 10;

SELECT DISTINCT JOB
FROM EMP
WHERE DEPTNO = 30;

SELECT *
FROM EMP
WHERE DEPTNO = 10
AND JOB NOT IN(
    SELECT DISTINCT JOB
    FROM EMP
    WHERE DEPTNO = 30
);

SELECT E.EMPNO, E.ENAME, E.JOB, E.DEPTNO, D.DNAME, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
AND E.DEPTNO = 10
AND JOB NOT IN(
    SELECT DISTINCT JOB
    FROM EMP
    WHERE DEPTNO = 30
);

select empno, ename, job, e.deptno, dname, loc 
from emp e,dept d
where e.deptno = d.deptno and
e.deptno = 10 and
job != all(select job from emp where deptno = 30);

SELECT E.EMPNO, E.ENAME, E.JOB, E.DEPTNO, D.DNAME, D.LOC
FROM EMP E
JOIN DEPT D ON E.DEPTNO = D.DEPTNO
WHERE E.DEPTNO = 10 AND 
    E.JOB NOT IN (SELECT JOB 
                  FROM EMP 
                  WHERE DEPTNO = 30);
                  
SELECT EMP.EMPNO, EMP.ENAME, EMP.JOB, EMP.DEPTNO, DEPT.DNAME, DEPT.LOC
FROM EMP
JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
WHERE JOB NOT IN (
    SELECT JOB
    FROM EMP
    WHERE DEPTNO = 30
)
AND EMP.DEPTNO = 10;                  
 
SELECT E.EMPNO, E.ENAME, E.JOB, E.DEPTNO, D.DNAME, D.LOC
FROM EMP E JOIN DEPT D ON E.DEPTNO = D.DEPTNO
WHERE E.DEPTNO = 10
AND E.JOB NOT IN(SELECT JOB
                FROM EMP
                WHERE DEPTNO = 30);
                  
SELECT E.EMPNO, E.ENAME, E.JOB, E.DEPTNO, D.DNAME, D.LOC
FROM EMP E, DEPT D
WHERE E.DEPTNO = D.DEPTNO
    AND E.DEPTNO = 10
    AND E.JOB NOT IN(SELECT JOB
                        FROM EMP
                        WHERE DEPTNO = 30);
                        
SELECT EMPNO , ENAME ,JOB ,E.DEPTNO , DNAME ,LOC
FROM EMP E, DEPT D , SALGRADE S
WHERE E.DEPTNO = D.DEPTNO AND 
E.SAL BETWEEN S.LOSAL AND S.HISAL  AND
E.DEPTNO=10 AND
JOB NOT IN ( SELECT JOB
                FROM EMP
                WHERE DEPTNO=30);                        
 
SELECT E.EMPNO, E.ENAME,E.JOB, E.DEPTNO, D.DNAME,D.LOC
                FROM EMP E JOIN DEPT D ON E.DEPTNO = D.DEPTNO
                WHERE E.DEPTNO = 10
                AND E.JOB NOT IN(SELECT JOB FROM EMP WHERE DEPTNO = 30);
                        
-- Q4-1. ��å�� SALESMAN�� ������� �ְ� �޿����� ���� �޿��� �޴� �������
-- �����ȣ,����̸�,�޿�,�޿������ ����ϱ�
-- �� ���������� Ȱ���Ҷ� ������ �Լ��� ����ϴ� ����� ������� �ʴ� ����� ���� ��� ��ȣ�� �������� ������������ �����ϱ�
-- 1) ������ ���������� Ȱ��
-- 2) ������ �����ڸ� ����ϴ� ��� (> ALL)
-- 3) ��� ��ȣ�� �������� ������������ ���� (EMPNO ASC)

SELECT DISTINCT SAL
FROM EMP
WHERE JOB = 'SALESMAN';

SELECT E.EMPNO, E.ENAME, E.SAL, S.GRADE
FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
AND SAL > ALL(
    SELECT DISTINCT SAL
    FROM EMP
    WHERE JOB = 'SALESMAN'
)
ORDER BY E.EMPNO;

-- Q4-2. ��å�� SALESMAN�� ������� �ְ� �޿����� ���� �޿��� �޴� �������
-- �����ȣ,����̸�,�޿�,�޿������ ����ϱ�
-- �� ���������� Ȱ���Ҷ� ������ �Լ��� ����ϴ� ����� ������� �ʴ� ����� ���� ��� ��ȣ�� �������� ������������ �����ϱ�
-- 1) ������ ���������� Ȱ��
-- 2) ������ �����ڸ� ������� �ʴ� ���(������ �Լ��� ���)
-- 3) ��� ��ȣ�� �������� ������������ ����

SELECT E.EMPNO, E.ENAME, E.SAL, S.GRADE
FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL
AND SAL > (
    SELECT MAX(SAL)
    FROM EMP
    WHERE JOB = 'SALESMAN'
)
ORDER BY E.EMPNO;

-- DEPT ���̺��� �����ؼ� DEPT_TCL ���̺� �����
CREATE TABLE DEPT_TCL
    AS SELECT * FROM DEPT;

-- DEPT_TCL ���̺��� ��ü �� ����ϱ�
SELECT *
FROM DEPT_TCL;

-- DEPT_TCL ���̺� �����͸� �Է�/����/�����ϱ�
INSERT INTO DEPT_TCL
VALUES (50, 'DATABASE', 'SEOUL');

UPDATE DEPT_TCL
SET LOC = 'BUSAN'
WHERE DEPTNO = 40;

DELETE FROM DEPT_TCL
WHERE DNAME = 'RESEARCH';

-- DEPT_TCL ���̺��� ��ü �� ����ϱ�
SELECT *
FROM DEPT_TCL;

-- ROLLBACK ���� ��ɾ� ���� ����ϱ�
ROLLBACK;

-- DEPT_TCL ���̺��� ��ü �� ����ϱ�
SELECT *
FROM DEPT_TCL;

-- DEPT_TCL ���̺� �����͸� �Է�/����/�����ϱ�
INSERT INTO DEPT_TCL
VALUES (50, 'NETWORK', 'SEOUL');

UPDATE DEPT_TCL
SET LOC = 'BUSAN'
WHERE DEPTNO = 20;

DELETE FROM DEPT_TCL
WHERE DEPTNO = 40;

-- DEPT_TCL ���̺��� ��ü �� ����ϱ�
SELECT *
FROM DEPT_TCL;

-- COMMIT���� ��ɾ� �ݿ��ϱ�
COMMIT;

-- DEPT_TCL ���̺��� ��ü �� ����ϱ�
SELECT *
FROM DEPT_TCL;

-- 50�� �μ� �����͸� �����ϱ�
DELETE FROM DEPT_TCL
WHERE DEPTNO = 50;

-- DEPT_TCL ���̺��� ��ü �� ����ϱ�
SELECT *
FROM DEPT_TCL;

-- COMMIT���� ��ɾ� �ݿ��ϱ�
COMMIT;

-- DEPT_TCL ���̺��� ��ü �� ����ϱ�
SELECT *
FROM DEPT_TCL;

-- 30�� �μ��� ������ �����ϱ�
UPDATE DEPT_TCL
SET LOC = 'SEOUL'
WHERE DEPTNO = 30;

-- DEPT_TCL ���̺��� ��ü �� ����ϱ�
SELECT *
FROM DEPT_TCL;

-- 30�� �μ��� ������ �����ϱ�
UPDATE DEPT_TCL
SET DNAME = 'DATABASE'
WHERE DEPTNO = 30;

-- COMMIT���� ��ɾ� �ݿ��ϱ�
COMMIT;

-- DEPT_TCL ���̺��� ��ü �� ����ϱ�
SELECT *
FROM DEPT_TCL;

-- ��� ���� �� �ڷ����� �����ؼ� ���̺� �����ϱ�
CREATE TABLE EMP_DDL(
    EMPNO NUMBER(4), 
    ENAME VARCHAR2(10),
    JOB   VARCHAR2(9),
    MGR  NUMBER(4),
    HIREDATE DATE,
    SAL NUMBER(7,2),
    COMM NUMBER(7,2),
    DEPTNO NUMBER(2)
);

-- EMP_DDL ���̺��� ���� Ȯ���ϱ�
DESC EMP_DDL;

-- �ٸ� ���̺� �����Ͽ� ���̺� �����ϱ�
CREATE TABLE DEPT_DDL
    AS SELECT * FROM DEPT;

-- DEPT_DDL ���̺��� ���� Ȯ���ϱ�
DESC DEPT_DDL;

-- DEPT_DDL ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_DDL;

-- �ٸ� ���̺��� �Ϻθ� �����Ͽ� ���̺� �����ϱ�
CREATE TABLE EMP_DDL_30
    AS SELECT * FROM EMP WHERE DEPTNO = 30;

-- EMP_DDL_30 ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM EMP_DDL_30;

-- �ٸ� ���̺��� �����Ͽ� ���̺� �����ϱ�
CREATE TABLE EMPDEPT_DDL
    AS SELECT E.EMPNO, E.ENAME, E.JOB, E.MGR, E.HIREDATE, 
            E.SAL, E.COMM, D.DEPTNO, D.DNAME, D.LOC
        FROM EMP E, DEPT D
        WHERE 1 <> 1;

-- EMPDEPT_DDL ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM EMPDEPT_DDL;

-- EMP ���̺��� �����Ͽ� EMP_ALTER ���̺� �����ϱ�
CREATE TABLE EMP_ALTER
    AS SELECT * FROM EMP;

-- EMP_ALTER ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM EMP_ALTER;

-- ALTER ��ɾ�� HP �� �߰��ϱ�
ALTER TABLE EMP_ALTER
    ADD HP VARCHAR2(20);
    
-- EMP_ALTER ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM EMP_ALTER;

-- ALTER ��ɾ�� HP �� �̸��� TEL�� �����ϱ�
ALTER TABLE EMP_ALTER
    RENAME COLUMN HP TO TEL;
    
-- EMP_ALTER ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM EMP_ALTER;

-- EMP_ATLER ���̺� ���� Ȯ���ϱ�
DESC EMP_ALTER;


-- ALTER ��ɾ�� EMPNO �� ���� �����ϱ�
ALTER TABLE EMP_ALTER
    MODIFY EMPNO NUMBER(5);

-- EMP_ATLER ���̺� ���� Ȯ���ϱ�
DESC EMP_ALTER;

-- ALTER ��ɾ�� TEL �� �����ϱ�
ALTER TABLE EMP_ALTER
    DROP COLUMN TEL;

-- EMP_ALTER ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM EMP_ALTER;

-- ���̺� �̸� �����ϱ�
RENAME EMP_ALTER TO EMP_RENAME;

-- �ٲٱ� �� �̸����� ���̺� ���� Ȯ���ϱ�
DESC EMP_ALTER;

-- ����� ���̺� �̸�(EMP_RENAME)���� ��ȸ�ϱ�
SELECT *
FROM EMP_RENAME;

-- EMP_RENAME ���̺��� ��ü ������ �����ϱ�
TRUNCATE TABLE EMP_RENAME;

-- EMP_RENAME ���̺� ��ü �� ����ϱ�
SELECT *
FROM EMP_RENAME;

-- EMP_RENAME ���̺� �����ϱ�
DROP TABLE EMP_RENAME;

-- EMP_RENAME ���̺� ���� Ȯ���ϱ�
DESC EMP_RENAME;

-- SCOTT �������� ��� ������ ������ ���� ���캸��(1)
SELECT *
FROM DICT;

-- SCOTT �������� ��� ������ ������ ���� ���캸��(2)
SELECT *
FROM DICTIONARY;

-- SCOTT ������ ������ �ִ� ��ü ���� ���캸��
SELECT TABLE_NAME
FROM USER_TABLES;

-- SCOTT ������ ����� �� �ִ� ��ü ���� ���캸��
SELECT OWNER, TABLE_NAME
FROM ALL_TABLES;

-- SCOTT �������� DBA_ ���ξ� ����ϱ�
SELECT *
FROM DBA_TABLES;

-- SYSTEM �������� DBA_ ���ξ� ����ϱ�
SELECT *
FROM DBA_TABLES;

-- DBA_USERS�� ����Ͽ� ����� ������ �˾ƺ���
SELECT *
FROM DBA_USERS
WHERE USERNAME = 'SCOTT';

-- SCOTT ������ ������ �ε��� ���� �˾ƺ���
SELECT *
FROM USER_INDEXES;

-- SCOTT ������ ������ �ε��� �÷� ���� �˾ƺ���
SELECT *
FROM USER_IND_COLUMNS;

-- EMP ���̺��� SAL ���� �ε��� �����ϱ�
CREATE INDEX IDX_EMP_SAL
    ON EMP(SAL);

-- ������ �ε��� ���캸��
SELECT * FROM USER_IND_COLUMNS;

-- �ε��� �����ϱ�
DROP INDEX IDX_EMP_SAL;

-- ������ �ε��� ���캸��
SELECT * FROM USER_IND_COLUMNS;

-- �並 �����ϱ� ���� ���� �ο��ϱ�
GRANT CREATE VIEW TO SCOTT;

-- �� �����ϱ�
CREATE VIEW VW_EMP20
    AS (
        SELECT EMPNO, ENAME, JOB, DEPTNO
        FROM EMP
        WHERE DEPTNO = 20
    );

-- ������ �� Ȯ���ϱ�
SELECT *
FROM USER_VIEWS;

-- ������ �� ���� Ȯ���ϱ�
SELECT VIEW_NAME, TEXT_LENGTH, TEXT
FROM USER_VIEWS;

-- ������ �� ��ȸ�ϱ�
SELECT *
FROM VW_EMP20;

-- �� �����ϱ�
DROP VIEW VW_EMP20;

-- ������ �� ���� Ȯ���ϱ�
SELECT VIEW_NAME, TEXT_LENGTH, TEXT
FROM USER_VIEWS;

-- ������ �� Ȯ���ϱ�
SELECT *
FROM USER_VIEWS;

-- ROWNUM�� �߰��� ��ȸ�ϱ�
SELECT ROWNUM, E.*
FROM EMP E;

-- EMP ���̺��� SAL �� �������� �����ϱ�
SELECT ROWNUM, E.*
FROM EMP E
ORDER BY SAL DESC;

-- �ζ��� ��(��������)
SELECT ROWNUM, E.*
FROM (
    SELECT *
    FROM EMP E
    ORDER BY SAL DESC
) E;

-- �ζ��� ��(WITH�� ���)
WITH E AS (
    SELECT *
    FROM EMP E
    ORDER BY SAL DESC
)
SELECT ROWNUM, E.*
FROM E;

-- �ζ��� ��� TOP-N �����ϱ�(��������)
SELECT ROWNUM, E.*
FROM (
    SELECT *
    FROM EMP E
    ORDER BY SAL DESC
) E
WHERE ROWNUM <=3;

-- �ζ��� ��� TOP-N �����ϱ�(WITH�� ���)
WITH E AS (
    SELECT *
    FROM EMP E
    ORDER BY SAL DESC
)
SELECT ROWNUM, E.*
FROM E
WHERE ROWNUM <=3;

-- DEPT ���̺��� ����Ͽ� DEPT_SEQUENCE ���̺� �����ϱ�
CREATE TABLE DEPT_SEQUENCE
    AS SELECT *
        FROM DEPT
        WHERE 1 <> 1;
        
--  DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ������ �����ϱ�
CREATE SEQUENCE SEQ_DEPT_SEQUENCE
INCREMENT BY 10
START WITH 10
MAXVALUE 90
MINVALUE 0
NOCYCLE
CACHE 2;

-- ������ ������ Ȯ���ϱ�
SELECT *
FROM USER_SEQUENCES;

-- ���������� ������ ������ ����� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ���� ���������� ������ ������ Ȯ���ϱ�
SELECT SEQ_DEPT_SEQUENCE.CURRVAL
FROM DUAL;

-- ���������� ������ ������ ����� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ���������� ������ ������ ����� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ���������� ������ ������ ����� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ���������� ������ ������ ����� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ���������� ������ ������ ����� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ���������� ������ ������ ����� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ���������� ������ ������ ����� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ���������� ������ ������ ����� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ���������� ������ ������ ����� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- ������ �ɼ� �����ϱ�
ALTER SEQUENCE SEQ_DEPT_SEQUENCE
INCREMENT BY 3
MAXVALUE 99
CYCLE;

-- �ɼ��� ������ ������ ��ȸ�ϱ�
SELECT *
FROM USER_SEQUENCES;

-- ������ �������� ����Ͽ� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ������ �������� ����Ͽ� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ������ �������� ����Ͽ� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ������ �������� ����Ͽ� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE;

-- ������ �������� ����Ͽ� INSERT�� �����ϱ�
INSERT INTO DEPT_SEQUENCE (DEPTNO, DNAME, LOC)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'DATABASE', 'SEOUL');

-- DEPT_SEQUENCE ���̺� ��ü �� ��ȸ�ϱ�
SELECT *
FROM DEPT_SEQUENCE 
ORDER BY DEPTNO;

-- ������ �����ϱ�
DROP SEQUENCE SEQ_DEPT_SEQUENCE;

-- ������ ������ ��ȸ�ϱ�
SELECT *
FROM USER_SEQUENCES;

--[������ ���� �亯]
-- ������ �����ϱ�
CREATE SEQUENCE SEQ_DEPT_SEQUENCE;

--���̺��� �����ϱ�
CREATE TABLE SEQ_TABLE1
    AS SELECT * FROM DEPT; 
    
--���̺��� �����ϱ�
CREATE TABLE SEQ_TABLE2
    AS SELECT * FROM EMP;   
    
-- SEQ_TABLE1 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM SEQ_TABLE1;

-- SEQ_TABLE2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM SEQ_TABLE2;

-- SEQ_TABLE1 ���̺� ������ �Է��ϱ�
INSERT INTO SEQ_TABLE1
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL, 'AI','DENVER' );

-- SEQ_TABLE1 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM SEQ_TABLE1;

-- SEQ_TABLE2 ���̺� ������ �Է��ϱ�
INSERT INTO SEQ_TABLE2 (DEPTNO)
VALUES (SEQ_DEPT_SEQUENCE.NEXTVAL);

-- SEQ_TABLE2 ���̺� ��ü �� ��ȸ�ϱ�
SELECT * 
FROM SEQ_TABLE2;

-- TCL
COMMIT;

