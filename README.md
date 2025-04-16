# Student Performance Analytics
The "Student Performance Analytics" project was collaboratively developed by Prince and Kevin. We worked together using GitHub to coordinate our efforts on PL/SQL window function queries, promoting mutual learning and producing a well-integrated outcome..
## 👥 Team Members
- 27555 Dushimimana Prince
- 27387 Manzi Eric Kevin

## 📌 Instructor: `ericmaniraguha`

## 📂 Project Name: Student Performance Analytics

## 🎯 Objective
This project showcases the application of SQL window functions in Oracle, utilizing a practical dataset involving students, departments, and their academic performance.

## 🧱 Schema Design
- `departments` – Stores information about each department or faculty in the institution..
- `students` – Contains records of students, including their department, enrollment date, and performance score..
- `scores_history` – Tracks the historical test scores of students over time.
## 🗃️ CREATING TABLES
  ![CREATING TABLES](https://github.com/Dushimimanaprince/new/blob/9df07c07c3ca4371581cc675cf24c4e5059be2a1/1.png)
  ![CREATING TABLES](https://github.com/Dushimimanaprince/new/blob/9df07c07c3ca4371581cc675cf24c4e5059be2a1/2.png)
  ![CREATING TABLES](https://github.com/Dushimimanaprince/new/blob/9df07c07c3ca4371581cc675cf24c4e5059be2a1/3.png)
## 	💻 INSERTING DATA INTO THE TABLES
  ![INSERTING DATA IN TABLES](https://github.com/Dushimimanaprince/new/blob/9df07c07c3ca4371581cc675cf24c4e5059be2a1/4.png)
  ![INSERTING DATA IN TABLES](https://github.com/Dushimimanaprince/new/blob/9df07c07c3ca4371581cc675cf24c4e5059be2a1/5.png)
  ![INSERTING DATA IN TABLES](https://github.com/Dushimimanaprince/new/blob/9df07c07c3ca4371581cc675cf24c4e5059be2a1/6.png)


## 🧠 Completed Tasks

### ✅ Compare Values with Previous or Next Records
- Used `LAG()` and `LEAD()` on salary to determine if an employee's salary is **HIGHER, LOWER, or EQUAL** to the previous employee.

  ![Compare Values with Previous or Next Records ](https://github.com/Dushimimanaprince/new/blob/9df07c07c3ca4371581cc675cf24c4e5059be2a1/7.png)

  ### 🥇🥈🥉 Identifying Top Records
- Fetched **top 3 highest scores per department** using `RANK()`.

  ![Identifying Top 3 Records per Department ](https://github.com/Dushimimanaprince/new/blob/9df07c07c3ca4371581cc675cf24c4e5059be2a1/9.png)


### 🚪👥⏰ Finding the Earliest Records
- Used `ROW_NUMBER()` to retrieve the **first 2 student** to join each department.

  ![Finding the Earliest Records ](https://github.com/Dushimimanaprince/new/blob/9df07c07c3ca4371581cc675cf24c4e5059be2a1/10.png)

  ### 📈🏢🌍 Aggregation with Window Functions
- Calculated **Maximum Score** per department and overall.
- Used `PARTITION BY` to distinguish between category-level and overall calculations.

  ![Aggregation with Window Functions (Max Salaries)](https://github.com/Dushimimanaprince/new/blob/9df07c07c3ca4371581cc675cf24c4e5059be2a1/11Qpng)


## ⚙️ Technology
- Oracle SQL Developer
- GitHub for version control

## 📷 Optional
- Screenshots

---

## 📁 Files Included

- `dataset.sql` – Creates and populates all 3 tables.
- `Queries.sql` – All required queries with window functions.
- `README.md` – Project summary, explanation, and documentation.

---

### 🧠 Real-World Applications
✅ 1. Track Student Progress Over Time

✅ 2. Rank Students Fairly Within Departments

✅ 3. Department-Level Insights & Comparisons


## 🔚 Conclusion


The Student Performance Analytics project serves as a comprehensive demonstration of the practical use of SQL window functions in Oracle. By leveraging a well-structured dataset consisting of students, departments, and historical performance scores, this program showcases how powerful analytical queries can be built using real-world academic data.

One of the key strengths of this project is its ability to offer insights that go beyond simple aggregations. Using functions like LAG(), LEAD(), RANK(), and DENSE_RANK(), we explored trends, comparisons, and rankings in ways that would be difficult using basic SQL.

💡 Track Academic Trends: The program identifies score changes over time, helping institutions understand how students progress across multiple test dates.

🏆 Fair Ranking System: It ensures a transparent ranking of students within each department, handling ties and promoting data fairness.

📊 Departmental Performance Overview: With the use of window-based aggregations, departments can monitor their top-performing students and overall academic standing.

The use of PL/SQL and GitHub for collaboration helped us write clean, maintainable code while learning from each other’s strengths. The team effort between Prince and Kevin ensured that this wasn’t just a technical exercise, but a learning journey that strengthened our understanding of database analytics and teamwork.

Overall, the project proves that SQL window functions are not only powerful but also essential for performing advanced analytics on educational data. It provides a scalable foundation that can be extended to larger datasets, more detailed performance metrics, or integrated into dashboards for real-time academic monitoring.


**Thank you for reviewing our work!** 🚀


  
