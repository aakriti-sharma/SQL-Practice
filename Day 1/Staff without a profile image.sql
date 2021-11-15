--Write a SQL query to return staff's first name and last name if they don't have a profile picture.

SELECT first_name,last_name
FROM staff
WHERE picture IS NULL
LIMIT 5;
