-- Part 1: INSERT Data
INSERT INTO patients (first_name, last_name, date_of_birth, gender, language)
VALUES ('John', 'Doe', '1980-11-15' ,'Male', 'English');
-- to check if the row was added.

SELECT * 
FROM patients
ORDER BY patient_id DESC
LIMIT 5;

-- PART 2: UPDATE Date - uses id because of safe update mode
UPDATE patients
SET language = 'Spanish'
WHERE patient_id = 952;
-- Part 3: DELETE Data , deleting using an id is complicated because of relationships
-- The row with patient_id 10 must be deleted on all tables connected.
-- not a child rows
DELETE FROM discharges
WHERE patient_id = 10;

DELETE FROM ed_visits
WHERE patient_id = 10;
-- not a parent rows
DELETE FROM admissions
WHERE patient_id = 10;

DELETE FROM visits
WHERE patient_id = 10;

DELETE FROM patients
WHERE patient_id = 10;

-- to check if the row was deleted.
SELECT * 
FROM patients
ORDER BY patient_id ASC
LIMIT 10;

-- PART 4: Handling NULL Values
-- PART 4.1 finds the first Null values then updates them, this brings issues with safe update mode
-- Disables this feature
SET SQL_SAFE_UPDATES = 0;
-- updates the null values
UPDATE providers
SET first_name = COALESCE(first_name, 'N/A'), last_name = COALESCE(last_name, 'N/A'), email_address = COALESCE(email_address, 'N/A'), phone_number = COALESCE(phone_number, 'N/A')
WHERE first_name IS NULL OR last_name IS NULL OR email_address IS NULL OR phone_number IS NULL;
-- Check the table to confirm 
SELECT *
FROM providers;

-- PART 4.2
UPDATE providers
SET phone_number = CASE WHEN phone_number IS NULL THEN 'Missing details' ELSE phone_number END, email_address = CASE WHEN email_address IS NULL THEN 'Missing details' ELSE email_address END;
-- Check the table to confirm 
SELECT *
FROM providers;