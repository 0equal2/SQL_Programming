-- [프로그래머스]오랜 기간 보호한 동물(2)
-- ANIMAL_INS : 보호소에 들어온 동물
-- ANIMAL_OUTS : 보호소에서 입양간 동물
-- ANIMAL_ID : 외래키
-- 입양을 간 동물 중, 보호 기간이 가장 길었던 동물 2마리
-- 아이디, 이름 조회
-- 보호 기간이 긴 순으로 조회

SELECT OUTS.ANIMAL_ID, OUTS.NAME FROM ANIMAL_OUTS OUTS
LEFT JOIN ANIMAL_INS INS
ON OUTS.ANIMAL_ID = INS.ANIMAL_ID
WHERE OUTS.DATETIME IS NOT NULL
ORDER BY (OUTS.DATETIME - INS.DATETIME) DESC
LIMIT 2