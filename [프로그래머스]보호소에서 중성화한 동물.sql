-- [프로그래머스]보호소에서 중성화한 동물
-- ANIMAL_INS : 보호소에 들어온 동물
-- ANMAL_OUTS : 보호소에서 입양간 동물 
-- ANIMAL_ID : 외래키
-- 보호소에서 중성화 수술을 거친 동물을 알아보려고 함.
-- 보호소에 들어올 당시 중성화 x
-- 보호소에서 나갈 당시 중성화 O
-- 중성화된 동물의 아이디, 생물종, 이름
-- 아이디 순으로 조회


SELECT OUTS.ANIMAL_ID, OUTS.ANIMAL_TYPE, OUTS.NAME FROM ANIMAL_OUTS OUTS
LEFT JOIN ANIMAL_INS INS
ON OUTS.ANIMAL_ID = INS.ANIMAL_ID
WHERE INS.SEX_UPON_INTAKE LIKE '%Intact%' AND (OUTS.SEX_UPON_OUTCOME LIKE '%Spayed%' OR OUTS.SEX_UPON_OUTCOME LIKE '%Neutered%')
ORDER BY OUTS.ANIMAL_ID