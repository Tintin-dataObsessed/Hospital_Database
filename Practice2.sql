-- imported the Hospital_db and specifying the schema to be used
USE hospital_db_assign1;
SELECT *
FROM patients;
-- 1.1 Write a query to retrieve the first_name, last_name and date_of_birth of all patients.
SELECT first_name, last_name , date_of_birth
FROM patients;
-- 1.2 Write a query to retrieve the provider_id, first_name and provider_specialty from the providers table.
SELECT provider_id, first_name ,provider_specialty
FROM providers;
-- 2.1 Write a query to retrieve all patients whose first names start with "Ab".
SELECT * 
FROM patients
WHERE first_name LIKE "AB%";
-- 2.2  Write a query to retrieve all providers whose specialties end with the letter "y".
SELECT * 
FROM providers
WHERE provider_specialty LIKE "%y";
-- 3.1 Write a query to find all patients born after 1st January 1980.
SELECT * 
FROM patients
WHERE date_of_birth >= '1980-01-01';
-- 3.2 Write a query to retrieve visits where the acuity level is 2 or higher.
SELECT * 
FROM ed_visits
WHERE acuity >= 2;
-- 4.1 Write a query to find patients who speak Spanish.
SELECT * 
FROM patients
WHERE language = 'Spanish';
-- 4.2 Write a query to retrieve visits where the reason is "Migraine" and the disposition is "Admitted".
SELECT * 
FROM ed_visits
WHERE reason_for_visit = 'Migraine' AND ed_disposition = 'Admitted';
-- 4.3 Write a query to find patients born between 1975 and 1980.
SELECT * 
FROM patients
WHERE date_of_birth BETWEEN '1975-01-01' AND '1980-12-31';
-- 5.1 Write a query to retrieve patient names and sort them in alphabetical order by last name..
SELECT  first_name, last_name
FROM patients
ORDER BY last_name DESC;
-- 5.2 Write a query to list all visits sorted by the date of the visit, starting from the most recent.
SELECT  *
FROM visits
ORDER BY date_of_visit DESC;
-- 6.1 Write a query to retrieve all admissions where the primary diagnosis is "Stroke" and the discharge disposition is "Home".
SELECT  *
FROM admissions, discharges
WHERE primary_diagnosis = 'Stroke' AND discharge_disposition = 'Home';
-- 6.2 Write a query to find providers who joined after 1995 and specialize in either Pediatrics or Cardiology.
SELECT  *
FROM providers 
WHERE date_joined >= '1995-01-01' AND (provider_specialty = 'Pediatrics' OR provider_specialty = 'Cardiology');
-- Write a query that lists all discharges where the patient was discharged home and the discharge date is within the first week of March 2018.
SELECT  *
FROM discharges
ORDER BY discharge_disposition = 'HOME' AND discharge_date BETWEEN '2018-03-03' AND '2018-03-08';