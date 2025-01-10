-- Problem: 1661. Average Time of Process per Machine;
-- Platform: LeetCode;
-- URL: https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50

-- Write your PostgreSQL query statement below
WITH ProcessTimes AS (
    SELECT 
        machine_id,
        process_id,
        MAX(CASE WHEN activity_type = 'end' THEN timestamp END) -
        MAX(CASE WHEN activity_type = 'start' THEN timestamp END) AS process_time
    FROM Activity
    GROUP BY machine_id, process_id
)
SELECT 
    machine_id,
    ROUND(AVG(process_time)::numeric, 3) AS processing_time
FROM ProcessTimes
GROUP BY machine_id;


