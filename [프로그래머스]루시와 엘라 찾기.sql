-- [프로그래머스]루시와 엘라 찾기
-- 이름이 Lucy, Ella, Pickle, Rogan, Sabrina, Mitty인 동물
-- 아이디, 이름, 성별 및 중성화 여부 조사
-- 아이디 순으로 조사

SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE FROM ANIMAL_INS
WHERE NAME = 'Lucy' OR NAME = 'Ella' OR NAME = 'Pickle' OR NAME = 'Rogan' OR NAME = 'Sabrina' OR NAME = 'Mitty'
ORDER BY ANIMAL_ID