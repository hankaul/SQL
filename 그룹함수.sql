-- [1] ROLLUP [52]
SELECT job, sum(sal)
FROM emp
GROUP BY ROLLUP(job);


SELECT deptno ,job,sum(sal)
FROM emp
GROUP BY ROLLUP (deptno,job);



SELECT deptno ,job,mgr,sum(sal)
FROM emp
GROUP BY ROLLUP ((deptno,job),mgr)



SELECT job,deptno,sum(sal)
FROM emp
GROUP BY job ,  ROLLUP (deptno)




--[2] GROUPING (추가)
SELECT job,deptno,sum(sal)
	,GROUPING(JOB)
	,GROUPING(deptno)
FROM emp
GROUP BY ROLLUP(job,deptno);



SELECT
	CASE WHEN GROUPING(JOB) =1 THEN 'TOTAL JOB' 
	ELSE JOB 
	END AS TOTAL_JOB
	,CASE WHEN GROUPING(deptno)=1 THEN 'TOTAL DEPTNO'
	ELSE TO_CHAR(deptno) 
	END AS TOTAL_DEPTNO
	,SUM(sal)
FROM emp
GROUP BY ROLLUP(job,deptno);


--[3] CUBE (53)
SELECT JOB, sum(sal)
FROM EMP
GROUP BY CUBE(JOB)



SELECT JOB, sum(sal)
FROM EMP
GROUP BY CUBE(JOB)


--[4] GROUPING SETS (54)

SELECT DEPTNO, JOB, SUM(SAL)
FROM EMP e
GROUP BY GROUPING SETS((DEPTNO),(JOB),());



SELECT DEPTNO, JOB, SUM(SAL)
FROM EMP e
GROUP BY GROUPING SETS((DEPTNO,JOB),());