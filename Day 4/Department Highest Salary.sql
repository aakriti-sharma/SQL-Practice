SELECT d.name as "Department",e.name as "Employee",e.salary as "Salary"
FROM Employee e,Department d
WHERE e.departmentId=d.id AND (e.salary,e.departmentId) IN
                            (SELECT MAX(salary),departmentID
                            FROM Employee
                            GROUP BY DepartmentId)
