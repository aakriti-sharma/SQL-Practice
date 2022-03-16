BEGIN;

--  Linghu Chong --
UPDATE teachers
SET age = 26
WHERE name = 'Linghu Chong';

-- Write your SQL Query here --
ROLLBACK;
COMMIT;
