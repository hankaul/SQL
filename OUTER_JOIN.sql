SELECT e.ename, d.loc
FROM emp e, dept d 
WHERE e.deptno(+)= d.deptno;

--- EQUI JOIN 시 `EMP테이블` 과  `DEPT테이블` 과의 조인 결과에서 BOSTON 출력 되지 않음.
--- → `EMP테이블` 에서 40번 부서 번호가 존재하지 않아  조인되지 않았기 때문이다.
    
---![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/569c5dc3-87ee-4cd0-9869-fcf1217aabe8/Untitled.png)
    
--- **“BOSTON에는 사원이 배치 되지 않았다”**는 정보를 한눈에 확인하는 `OUTER JOIN`
--- `OUTER JOIN` 는 `EMP` 와 `DEPT` 테이블 중 결과가 덜 나오는 쪽에 붙여준다. `(+)`
--- 위의 쿼리문은 `RIGT OUTER JOIN` 의 결과

-- ANIS 표준 JOIN
SELECT e.ename, e.job, e.sal, d.loc
FROM emp e RIGHT OUTER JOIN dept d
ON e.deptno = d.deptno

--오라클 조인
SELECT e.ename, e.job, e.sal, d.loc
FROM emp e ,dept d
WHERE e.deptno(+) = d.deptno

--full outer

INSERT INTO emp (empno,ename,sal,job,deptno) VALUES(8282,'JACK',3000,'ANALYST',50);
COMMIT; --LEFT OUTER JOIN을 수행하기 위해 DEPT 테이블에 없는 부서 번호 50번 삽입

SELECT e.ename, e.job, e.sal, d.loc
FROM emp e FULL OUTER JOIN dept d
ON e.deptno = d.DEPTNO

--cross join
SELECT e.ename, e.job, d.DEPTNO 
FROM emp e CROSS JOIN dept d