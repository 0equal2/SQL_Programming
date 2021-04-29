-- [프로그래머스]오랜 기간 보호한 동물(1)
-- ANIMAL_INS : 동물 보호소에 들어온 동물 
-- ANIMAL_OUTS : 동물 보호소에서 입양간 동물
-- ANIMAL_ID : 외래키
-- 아직 입양을 못간 동물 중, 가장 오래 보호소에 있었던 3마리의 이름과 보호시작일
-- 보호 시작일 순으로 조회

SELECT INS.NAME, INS.DATETIME FROM ANIMAL_INS INS
LEFT JOIN ANIMAL_OUTS OUTS
ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE OUTS.DATETIME IS NULL
ORDER BY INS.DATETIME
LIMIT 3