-- [프로그래머스]중성화 여부 파악하기
-- 보호소의 동물이 중성화 되었는지 아닌지 파악
-- 중성화 O : SEX_UPON_INTAKE LIKE '%Neutered%' OR SEX_UPON_INTAKE LIKE '%Spayed%'
-- 동물의 아이디, 이름, 중성화 여부(O,X)
-- 아이디순으로 조회

SELECT ANIMAL_ID, NAME, 
CASE WHEN (SEX_UPON_INTAKE LIKE '%Neutered%' OR SEX_UPON_INTAKE LIKE '%Spayed%') THEN 'O' ELSE 'X' END AS '중성화'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID