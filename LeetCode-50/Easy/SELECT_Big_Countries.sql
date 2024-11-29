-- Problem: Select Recyclable and low fat products;
-- Platform: LeetCode;
-- URL: https://leetcode.com/problems/big-countries/description/?envType=study-plan-v2&envId=top-sql-50

-- # Write your MySQL query statement below
SELECT name, area, population FROM World WHERE area >= 3000000 OR population >= 25000000;