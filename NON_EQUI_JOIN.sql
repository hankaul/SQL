SELECT e.ENAME, e.SAL , s.GRADE 
FROM EMP e , SALGRADE s 
WHERE e.SAL BETWEEN s.LOSAL  AND s.HISAL

--- 두 테이블 사이에 동일한 컬럼은 없지만 비슷한 컬럼(`e.SAL` 과 `s.LOSAL` , `s.HISAL` )이 존재
--- `NTILE` 분석 함수에 비해 `s.LOSAL` , `s.HISAL` 데이터를 변동하여 범위를 더 상세하게 지정 가능