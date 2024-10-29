-- Choosing the right database
USE hospital_db_assign1;

-- Basic Aggregate Functions
-- Question 1.1
SELECT count(*)
FROM admissions;
-- Question 1.2 linking 2 tables 
SELECT AVG(datediff(discharges.discharge_date, admissions.admission_date))
FROM admissions, discharges;

-- Grouping Data
-- Question 2.1
SELECT primary_diagnosis, count(admission_id)
FROM admissions
GROUP BY primary_diagnosis;
-- Question 2.2 datediff finds the date difference
SELECT service, AVG(DATEDIFF(discharge_date, admission_date))
FROM admissions
JOIN discharges ON admissions.admission_id = discharges.admission_id
GROUP BY service;
-- Question 2.3
SELECT discharge_disposition, COUNT(*)
FROM discharges
GROUP BY discharge_disposition;

-- Combining Aggregates and Filtering
-- Question 3.1
SELECT service, COUNT(admission_id) AS Admin_count
FROM admissions
GROUP BY service
HAVING Admin_count > 5;
-- Question 3.2 remember HAVING is only used for Groups WHERE is for Rows.
SELECT primary_diagnosis, AVG(datediff(discharges.discharge_date, admissions.admission_date))
FROM admissions
JOIN discharges ON admissions.admission_id = discharges.admission_id
WHERE primary_diagnosis LIKE "%Stroke"
GROUP BY primary_diagnosis;

-- Advanced Grouping and Summarizing
-- Question 4.1
SELECT acuity, count(visit_id)
FROM ed_visits
GROUP BY acuity;
-- Question 4.2
SELECT primary_diagnosis, service, count(visit_id)
FROM ed_visits
GROUP BY primary_diagnosis, service;

-- Practical Financial Analysis
-- Question 5.1
SELECT MONTH(admission_date) AS Months, count(admission_id)
FROM admissions
GROUP BY Months;
-- Question 5.2 This is two Selects in one, first to get the subquery of length of stay then to make it MAX then group it.
SELECT primary_diagnosis, MAX(length_of_stay) AS Maximum_length_of_stay
FROM ( SELECT primary_diagnosis, DATEDIFF(discharge_date, admission_date) AS length_of_stay
  FROM admissions
  JOIN discharges ON admissions.admission_id = discharges.admission_id
) AS subquery
GROUP BY primary_diagnosis;

-- Bonus Subquery1 Helps to calculate length of stay then the Query calculates Avrage and total length of stay then It groups and orders both.
SELECT service, AVG(length_of_stay) AS Avg_length_of_stay , SUM(length_of_stay) AS Total_length_of_stay
FROM ( SELECT service, DATEDIFF(discharge_date, admission_date) AS length_of_stay
  FROM admissions
  JOIN discharges ON admissions.admission_id = discharges.admission_id
) AS subquery1
GROUP BY service
ORDER BY Avg_length_of_stay ASC;
