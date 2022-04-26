SELECT * FROM A_TABLE A NATURAL JOIN B_TABLE B;
--A테이블과 B테이블에서 같은 이름을 가진 칼럼들의 동일한 데이터를 가진 행들만 출력


SELECT e.ename, e.job, e.sal, d.loc, deptno
FROM emp e NATURAL JOIN dept d
WHERE e.job = 'SALESMAN';
AND deptno =30;
---(1)  A테이블 과 B테이블 에서 같은 이름을 가진 칼럼들이 모두 동일한 데이터를 가지고 있을 경우 JOIN 되는 방식이며 MS SQL에서는 지원되지 않는다.