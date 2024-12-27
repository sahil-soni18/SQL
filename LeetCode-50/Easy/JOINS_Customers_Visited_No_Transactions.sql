-- Problem: 1581. Customer Who Visited but Did Not Make Any Transactions;
-- Platform: LeetCode;
-- URL: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50


-- Write your PostgreSQL query statement below
SELECT
    v.customer_id,
    COUNT(*) AS count_no_trans
FROM
    Visits v
LEFT JOIN
    Transactions t
ON
    v.visit_id = t.visit_id
WHERE
    t.visit_id IS NULL
GROUP BY
    v.customer_id;

