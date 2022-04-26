SELECT e.ename AS 사원, e.job AS 직업, m.ENAME AS 관리자, m.job AS 직업
FROM emp e, emp m
WHERE e.mgr = m.empno AND e.job='SALESMAN';

--`MGR` 이 직속 부하 사원들을 정하는 기준 (해당 사원의 직속 상사의 사원 번호
-- **BLAKE**의 `EMPNO` (사원번호)**7698을 `MGR`** (직속 상사)번호로 하고 있는 사원들 중 `e.job='SALESMAN'` 직업이 ‘SALESMAN’인 사원의 관리자와 그의 직업을 출력하는 쿼리
-- 위로 인해, 조인할 때 `EMPNO` 와 `MGR` 가 필요
-- `FROM절` 에서 사원 테이블을 2개 기술하고 하나는 `e 별칭` 하나는 `m 별칭`
-- `EMP테이블` 은 사원 테이블이라고 할 수 있고 관리자 테이블을 할 수 있는 두 가지 역할