SELECT DISTINCT a.id
FROM boxes a,boxes b
WHERE ABS(a.id-b.id)=1 AND (a.is_empty=1 AND b.is_empty=1)
ORDER BY 1
