# Hospital_Database
Queries on a hospital database on MySQL Workbench. Created a Entity Relationship Diagram (EFD) of the hospital database.
# Practice 1
Create six tables : patients, providers, appointments, visits, ed_visits, and discharges
# Practice 2
Part 1: Data Retrieval
Write a query to retrieve the first_name, last_name and date_of_birth of all patients.
Write a query to retrieve the provider_id, first_name and provider_specialty from the providers table.

Part 2: Pattern-Based Filtering
2.1). Write a query to retrieve all patients whose first names start with "Ab".
2.2). Write a query to retrieve all providers whose specialties end with the letter "y".

Part 3: Comparison Operators
3.1). Write a query to find all patients born after 1st January 1980.
3.2).Write a query to retrieve visits where the acuity level is 2 or higher.

Part 4: WHERE Clause with Logical Operators
4.1). Write a query to find patients who speak Spanish.
4.2). Write a query to retrieve visits where the reason is "Migraine" and the disposition is "Admitted".
4.3). Write a query to find patients born between 1975 and 1980.

Part 5: Sorting Data
5.1). Write a query to retrieve patient names and sort them in alphabetical order by last name.
5.2). Write a query to list all visits sorted by the date of the visit, starting from the most recent.

Part 6: Advanced
6.1). Write a query to retrieve all admissions where the primary diagnosis is "Stroke" and the discharge disposition is "Home".
6.2). Write a query to find providers who joined after 1995 and specialize in either Pediatrics or Cardiology.

Write a query that lists all discharges where the patient was discharged home and the discharge date is within the first week of March 2018.

# Practice 3
Part 1: Aggregate Functions
1.1). Write a query to find the total number of patient admissions in the admissions table.
1.2). Write a query to calculate the average length of stay (difference between discharge date and admission date) for all patients.

Part 2: Grouping Data
2.1). Write a query to group admissions by primary_diagnosis and calculate the total number of admissions for each diagnosis.
2.2). Write a query to group admissions by service and calculate the average length of stay for each service ).
2.3). Write a query to group discharges by discharge_disposition and count the number of discharges in each category 

Part 3: Combining Aggregates and Filtering
3.1). Write a query to group admissions by service and show the services where the total number of admissions is greater than 5.
3.2). Write a query to find the average length of stay for patients admitted with a primary diagnosis of "Stroke" in the admissions table.

Part 4: Advanced Grouping and Summarizing
4.1). Write a query to group emergency department visits (ed_visits) by acuity and calculate the total number of visits for each acuity level.
4.2). Write a query to group admissions by primary_diagnosis and service, showing the total number of admissions for each combination.

Part 5: Practical Financial Analysis
5.1). Write a query to group admissions by month (using the admission_date) and calculate the total number of admissions per month.
5.2 Write a query to find the maximum length of stay for each primary_diagnosis in the admissions table.

Write a query to group admissions by service and calculate both the total and average length of stay for each service, ordered by the highest average length of stay.

# Practice 4
Part 1: INSERT Data
1.1). Add a new patient with the following details

First Name: John
Second Name: Doe
Date of Birth: 15-11-1980
Gender: Male
Language: English

Part 2: UPDATE Data
2.1). Write a query to change John Doe's languge from "English" to "Spanish"

Part 3: DELETE Data
3.1). Delete the patient with the patient_id number 10

Part 4: Handling NULL Values
4.1). Write a query to find that takes all the names and the emails of the providers and if any of them has a NULL email, replace it with N/A
4.2). Write a query that takes the names and contact details of the provider whether phone number or email and if any of the two is missing, replace it with Missing details

Write a query to retrieve all providers whose speciality is pediatrics and they are missing either of the contact details.
