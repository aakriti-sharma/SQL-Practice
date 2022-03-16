# SQL-Practise Notes

- SET can be used to perform operations on variable outside of the query as `SET N=N-1;`
- LIMIT a OFFSET b can be used to extract a values after b number of values in a column.
- If( col = val, val1, val2) is the SQL version of a ternary operator, where if the condition valuates to true first value (val1) is assigned otherwise val2.
- `show full tables` lists all the views and tables in the database.
- Inline view is when SELECT statement occurs in FROM clause.
- When the tables are locked, use `unlock tables` to access them again.
- The command `rollback;` can be used to undo the previous action.
- `IFNULL()` function lets you return an alternative value if an expression is NULL
