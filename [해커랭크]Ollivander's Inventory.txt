/*
Enter your query here.
*/

-- 1. is_evil이 아닌 지팡이의 id, age, coins_needed, power 출력
-- 2. age,power가 같다면 min(coins_neede)인 것만 출력
-- 3. w.power desc, p.age desc 정렬

SELECT w.id, p.age, w.coins_needed, w.power
FROM Wands w 
JOIN Wands_Property p ON w.code=p.code
WHERE w.coins_needed = (SELECT MIN(coins_needed) FROM WANDS w2 JOIN Wands_Property p2 on w2.code=p2.code WHERE p2.is_evil=0 and w.power=w2.power and p.age=p2.age)
ORDER BY w.power DESC, p.age DESC

