# Write your MySQL query statement below
SELECT unique_id,name

FROM Employees

LEFT JOIN EmployeeUNI ON Employees.id=EmployeeUNI.id

left join includes everything from the left table ie employees in this case

