-- Problem: Select Recyclable and low fat products;
-- Platform: LeetCode;
-- URL: https://leetcode.com/problems/recyclable-and-low-fat-products/?envType=study-plan-v2&envId=top-sql-50

--# Write your MySQL query statement below
SELECT product_id FROM Products WHERE low_fats='Y' AND recyclable='Y';
