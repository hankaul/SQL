SELECT e.ENAME, e.SAL , s.GRADE 
FROM EMP e , SALGRADE s 
WHERE e.SAL BETWEEN s.LOSAL  AND s.HISAL