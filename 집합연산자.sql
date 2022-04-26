--[1] UNION ALL(67)
SELECT deptno, sum(sal)
FROM EMP
GROUP BY deptno
UNION ALL 
SELECT TO_NUMBER(NULL) AS deptno, SUM(sal) --열을 맞춰주기 위한 NULL값
FROM emp;


--[2] UNION (68)
SELECT deptno, sum(sal)
FROM EMP
GROUP BY deptno
UNION 
SELECT TO_NUMBER(NULL) AS r, SUM(sal) AS t 
FROM emp;



--[3] INTERSECT (69)
SELECT ename, sal, job, deptno
FROM emp
WHERE deptno IN (10,20)
INTERSECT 
SELECT ename, sal , job, deptno
FROM EMP e
WHERE deptno IN (20,30);



--[4] MINUS (70)
SELECT ename, sal, job, deptno
FROM emp
WHERE deptno IN (10,20)
MINUS 
SELECT ename, sal , job, deptno
FROM EMP 
WHERE deptno IN (20,30);