SELECT ENAME, LOC
FROM EMP e,DEPT d 
WHERE e.DEPTNO = d.DEPTNO


SELECT e.ENAME, d.LOC , e.JOB 
FROM EMP e, DEPT d 
WHERE e.DEPTNO = d.DPTNO 
AND e.job = 'ANALYST'


--SELECT ename,loc,job,deptno
--FROM emp, DEPT
--WHERE emp.DEPTNO = dept.DEPTNO
--error : 열의 정의가 애매합니다 


--수정한 쿼리문
SELECT e.ename, d.loc, e.job, e.deptno
FROM EMP e, DEPT d
WHERE e.DEPTNO = d.DEPTNO
---작동원리 
---1. 사원 테이블 에서 첫 번째 이름으로KING을 가져온다.
---2. KING의 부서 위치를 출력하기 위해 KING의 부서10번으로 DEPT 테이블에서 해당 
---부서 위치인 NEW YORK 을 찾아 출력한다.
---3. 위 작업을 행 마지막 까지 반복한다.