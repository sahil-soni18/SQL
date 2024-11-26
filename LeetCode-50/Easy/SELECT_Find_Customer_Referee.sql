-- Problem: Select Recyclable and low fat products;
-- Platform: LeetCode;
-- URL: https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below
SELECT name FROM Customer WHERE referee_id <> 2 OR referee_id IS NULL;
