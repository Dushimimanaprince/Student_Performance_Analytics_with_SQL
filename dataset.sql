-- ============================
-- 1. TABLE CREATION
-- ============================

-- Departments table
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(100)
);

-- Students table
CREATE TABLE students (
    student_id NUMBER PRIMARY KEY,
    student_name VARCHAR2(100),
    department_id NUMBER,
    join_date DATE,
    score NUMBER,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Scores history table
CREATE TABLE scores_history (
    student_id NUMBER,
    test_date DATE,
    test_score NUMBER
);

-- ============================
-- 2. INSERT SAMPLE DATA
-- ============================

-- Departments
INSERT INTO departments VALUES (1, 'Computer Science');
INSERT INTO departments VALUES (2, 'Electrical Engineering');
INSERT INTO departments VALUES (3, 'Business Administration');

-- Students
INSERT INTO students VALUES (101, 'Alice', 1, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 88);
INSERT INTO students VALUES (102, 'Bob', 1, TO_DATE('2023-01-12', 'YYYY-MM-DD'), 92);
INSERT INTO students VALUES (103, 'Charlie', 1, TO_DATE('2023-01-15', 'YYYY-MM-DD'), 88);
INSERT INTO students VALUES (104, 'David', 2, TO_DATE('2023-01-11', 'YYYY-MM-DD'), 85);
INSERT INTO students VALUES (105, 'Eva', 2, TO_DATE('2023-01-13', 'YYYY-MM-DD'), 89);
INSERT INTO students VALUES (106, 'Frank', 2, TO_DATE('2023-01-17', 'YYYY-MM-DD'), 85);
INSERT INTO students VALUES (107, 'Grace', 3, TO_DATE('2023-01-10', 'YYYY-MM-DD'), 90);
INSERT INTO students VALUES (108, 'Helen', 3, TO_DATE('2023-01-12', 'YYYY-MM-DD'), 91);
INSERT INTO students VALUES (109, 'Ivy', 3, TO_DATE('2023-01-14', 'YYYY-MM-DD'), 89);

-- Scores history
INSERT INTO scores_history VALUES (101, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 78);
INSERT INTO scores_history VALUES (101, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 82);
INSERT INTO scores_history VALUES (101, TO_DATE('2023-04-01', 'YYYY-MM-DD'), 88);
INSERT INTO scores_history VALUES (102, TO_DATE('2023-02-01', 'YYYY-MM-DD'), 91);
INSERT INTO scores_history VALUES (102, TO_DATE('2023-03-01', 'YYYY-MM-DD'), 92);
INSERT INTO scores_history VALUES (102, TO_DATE('2023-04-01', 'YYYY-MM-DD'), 94);

COMMIT;
