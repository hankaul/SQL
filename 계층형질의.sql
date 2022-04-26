
SELECT rpad(' ', LEVEL*2)|| ename AS employee , LEVEL, sal, job
FROM EMP 
START WITH ename = 'KING'
CONNECT BY PRIOR empno = mgr ;



SELECT rpad(' ', LEVEL*2)|| ename AS employee , LEVEL, sal, job
FROM EMP 
START WITH ename = 'KING'
CONNECT BY PRIOR empno = mgr AND ename !='BLAKE';


SELECT rpad(' ', LEVEL*2)|| ename AS employee , LEVEL, sal, job
FROM EMP
WHERE ENAME != 'BLAKE'
START WITH ename = 'KING'
CONNECT BY PRIOR empno = mgr


--[2] ORDER SIBLINGS BY (91)
SELECT rpad('',LEVEL*3)||ename AS EMPLOYEE, LEVEL , sal ,job
FROM emp
START WITH ename = 'KING'
CONNECT BY PRIOR empno = mgr
ORDER SIBLINGS  BY sal DESC;


SELECT rpad('',LEVEL*3)||ename AS EMPLOYEE, LEVEL , sal ,job
FROM emp
START WITH ename = 'KING'
CONNECT BY PRIOR empno = mgr
ORDER BY sal DESC;



--[3] SYS_CONNECT_ BY_PATH (91)
SELECT ename, LTRIM(SYS_CONNECT_BY_PATH(ename,'/'),'/') AS PATH
FROM EMP 
START WITH ename = 'KING'
CONNECT BY PRIOR empno = mgr ;



--[4] CONNET_BY_ISLEAF (추가) 
SELECT rpad(' ', LEVEL*2)|| ename AS employee , LEVEL, sal, job, CONNECT_BY_ISLEAF
FROM EMP 
START WITH ename = 'KING'
CONNECT BY PRIOR empno = mgr ;


--[5] CONNET_BY_ROOT (추가) 
SELECT rpad(' ', LEVEL*2)|| ename AS employee , LEVEL, sal, job
, CONNECT_BY_ROOT ename AS "최상위 관리자"
FROM EMP 
START WITH ename = 'KING'
CONNECT BY PRIOR empno = mgr ;