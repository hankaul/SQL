SELECT e.ename, d.loc, e.job, e.deptno
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.dept.DEPTNO

SELECT e.ename, d.loc, e.job, e.deptno
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.dept.DEPTNO

--SELECT ename,loc,job,deptno
--FROM emp, DEPT
--WHERE emp.DEPTNO = dept.DEPTNO
--error : 열의 정의가 애매합니다 

--수정한 쿼리문
SELECT e.ename, d.loc, e.job, e.deptno
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.dept.DEPTNO