-- Problem: 197. Rising Temperature;
-- Platform: LeetCode;
-- URL: https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50

-- Write your PostgreSQL query statement below

SELECT W1.id
FROM Weather W1
JOIN Weather W2
ON W1.recordDate = W2.recordDate + INTERVAL '1 day'
WHERE W1.temperature > W2.temperature;

