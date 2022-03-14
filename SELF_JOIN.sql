SELECT e.ename AS 사원, e.job AS 직업, m.ENAME AS 관리자, m.job AS 직업
FROM emp e, emp m
WHERE e.mgr = m.empno AND e.job='SALESMAN';