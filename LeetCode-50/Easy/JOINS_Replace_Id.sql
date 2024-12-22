-- Problem: Replace Employee ID With The Unique Identifier;
-- Platform: LeetCode;
-- URL: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/?envType=study-plan-v2&envId=top-sql-50


-- # Write your MySQL query statement below
SELECT EUNI.unique_id, E.name 
FROM EmployeeUNI EUNI
RIGHT JOIN Employees E
ON EUNI.id = E.id;