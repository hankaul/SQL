SELECT e.ename, d.loc
FROM emp e, dept d, salgrade s
WHERE e.deptno = d.deptno
AND e.sal BETWEEN s.losal AND s.hisal;

SELECT e.ename, d.loc, s.grade
FROM emp e
JOIN dept d ON e.deptno = d.deptno
JOIN salgrade s ON (e.sal BETWEEN s.losal AND s.HISAL);

--ANSI 표준 JOIN
SELECT e.ename, d.loc, s.grade
FROM emp e
JOIN dept d ON e.deptno = d.deptno
JOIN salgrade s ON (e.sal BETWEEN s.losal AND s.HISAL);

--오라클 EQUI JOIN
SELECT e.ename AS 이름, e.job AS 직업, e.sal AS 월급, d.loc AS 부서위치
FROM emp e, dept d
WHERE e.job = 'SALESMAN' AND e.dEPTNO =d.dEPTNO;

--ANSI 표준 JOIN
SELECT e.ename, d.loc, s.grade
FROM emp e 
JOIN dept d USING (deptno)
JOIN salgrade s ON e.sal BETWEEN s.losal AND s.hisal

--오라클 NON EQUI JOIN
SELECT e.ENAME, e.SAL , s.GRADE 
FROM EMP e , SALGRADE s 
WHERE e.SAL BETWEEN s.LOSAL  AND s.HISA

