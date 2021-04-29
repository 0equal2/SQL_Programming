-- [프로그래머스]이름에 el이 들어가는 동물 찾기
-- 할머니가 기르던 '개'는 이름에 'el'이 들어간다
-- 이름의 대소문자는 구분하지 않는다
-- 개의 아이디와 이름을 조회
-- 이름 순으로 조회

SELECT ANIMAL_ID, NAME FROM ANIMAL_INS
WHERE UPPER(NAME) LIKE UPPER('%EL%') AND ANIMAL_TYPE = 'Dog'
ORDER BY NAME