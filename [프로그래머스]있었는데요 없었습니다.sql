-- [프로그래머스]있었는데요 없었습니다
-- ANIMAL_INS : 보호소에 들어온 동물
-- ANIMAL_OUTS : 보호소에서 입양간 동물
-- ANIMAL_ID : 외래키
-- 입양일이 잘못 입력된 사건
-- 보호 시작일보다 입양일이 더 빠른 동물의 아이디와 이름을 조회
-- 보호 시작일이 빠른 순으로 조회

SELECT INS.ANIMAL_ID, INS.NAME FROM ANIMAL_INS INS
LEFT JOIN ANIMAL_OUTS OUTS
ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
WHERE INS.DATETIME > OUTS.DATETIME
ORDER BY INS.DATETIME