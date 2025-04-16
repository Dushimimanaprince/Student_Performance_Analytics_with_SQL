
-- ============================
-- 3. ASSIGNMENT QUERIES
-- ============================

-- 🔹 1. Compare Values with Previous or Next Records
SELECT 
    student_id,
    test_date,
    test_score,
    LAG(test_score) OVER (PARTITION BY student_id ORDER BY test_date) AS previous_score,
    LEAD(test_score) OVER (PARTITION BY student_id ORDER BY test_date) AS next_score,
    CASE
        WHEN test_score > LAG(test_score) OVER (PARTITION BY student_id ORDER BY test_date) THEN 'HIGHER'
        WHEN test_score < LAG(test_score) OVER (PARTITION BY student_id ORDER BY test_date) THEN 'LOWER'
        ELSE 'EQUAL'
    END AS score_vs_previous
FROM scores_history;

-- 🔹 2. Ranking Data within a Category
SELECT 
    s.student_id,
    s.student_name,
    d.department_name,
    s.score,
    RANK() OVER (PARTITION BY s.department_id ORDER BY s.score DESC) AS rank_score,
    DENSE_RANK() OVER (PARTITION BY s.department_id ORDER BY s.score DESC) AS dense_rank_score
FROM students s
JOIN departments d ON s.department_id = d.department_id;

-- 🔹 3. Identifying Top 3 Records per Department
WITH ranked_students AS (
    SELECT 
        student_id,
        student_name,
        department_id,
        score,
        RANK() OVER (PARTITION BY department_id ORDER BY score DESC) AS rank_score
    FROM students
)
SELECT * 
FROM ranked_students
WHERE rank_score <= 3;

-- 🔹 4. Finding the Earliest 2 Students in Each Department
WITH joined_students AS (
    SELECT 
        student_id,
        student_name,
        department_id,
        join_date,
        RANK() OVER (PARTITION BY department_id ORDER BY join_date) AS join_rank
    FROM students
)
SELECT * 
FROM joined_students
WHERE join_rank <= 2;

-- 🔹 5. Aggregation with Window Functions
SELECT 
    s.student_id,
    s.student_name,
    d.department_name,
    s.score,
    MAX(s.score) OVER (PARTITION BY s.department_id) AS max_score_in_dept,
    MAX(s.score) OVER () AS overall_max_score
FROM students s
JOIN departments d ON s.department_id = d.department_id;
