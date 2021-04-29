-- [프로그래머스]DATETIME에서 DATE로 형 변환
-- 모든 동물의 아이디, 이름, 들어온 날짜 조회
-- 날짜는 'YY-MM-DD'만
-- 아이디 순으로 조회

SELECT ANIMAL_ID, NAME, DATE_FORMAT(DATETIME, '%Y-%m-%d') AS '날짜'
FROM ANIMAL_INS
ORDER BY ANIMAL_ID