CREATE FUNCTION get_nth_height(N INT) RETURNS INT
BEGIN
SET N=N-1;
    RETURN (
        -- Write your SQL Query here --
      SELECT DISTINCT height as nth_height
	 FROM players
	 ORDER BY height DESC
	 LIMIT 1 OFFSET N
    );
END
