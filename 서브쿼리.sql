--[1] 단일행 중첩 서브쿼리(71)  
SELECT ename,sal
FROM EMP 
WHERE sal > (
	SELECT sal
	FROM EMP 
	WHERE ENAME = 'JONES');
--JONES 보다 더 많은 월급을 받는 사원 조회



SELECT ename,sal
FROM EMP 
WHERE sal = (
	SELECT SAL 
	FROM EMP 
	WHERE ename = 'SCOTT')
AND ENAME !='SCOTT';--SCOTT은 제외하고 출력
--SCOTT과 같은 월급을 받는 사원들의 이름과 월급 출력

--다중행 중첩 서브쿼리
SELECT ename,sal
FROM EMP 
WHERE sal IN (
	SELECT SAL
	FROM emp
	WHERE job = 'SALESMAN');


-- NOT IN
SELECT ename, sal, job
FROM emp
WHERE empno NOT IN (
	SELECT mgr
	FROM EMP 
	WHERE mgr IS NOT NULL);




SELECT ename, sal, job
FROM emp
WHERE empno NOT IN (7839,7698,7982,7566,7788,7782);




--EXISTS
SELECT *
FROM dept d
WHERE EXISTS (
	SELECT *
	FROM EMP e 
	WHERE e.DEPTNO =d.DEPTNO );




SELECT *
FROM dept d
WHERE NOT EXISTS (
SELECT *
FROM EMP e
WHERE e.DEPTNO =d.DEPTNO );



--HAVING절
SELECT job, sum(sal)
FROM EMP e
GROUP BY JOB 
HAVING sum(sal) > (
	SELECT sum(sal)
	FROM EMP e2 
	WHERE e2.job='SALESMAN');





--from 절
SELECT v.ename, v.sal, v.순위
FROM(
	SELECT ename,sal,RANK()OVER(ORDER BY sal DESC)순위
	FROM emp 
	)v
WHERE v.순위 = 1;


--SELECT 절
SELECT ename,sal,
	(SELECT max(sal) FROM emp WHERE job='SALESMAN') AS "최대 월급",
	(SELECT min(sal) FROM emp WHERE job='SALESMAN') AS "최소 월급"
FROM emp
WHERE job = 'SALESMAN';



---SELECT ename,max(sal)
---FROM emp
---WHERE job = 'SALESMAN';
--EROR : 단일 그룹의 그룹함수가 아닙니다


