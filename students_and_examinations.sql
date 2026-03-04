# Write your MySQL query statement below
select Students.student_id,Students.student_name,Subjects.subject_name,count(Examinations.subject_name) as attended_exams
from Students 
cross join Subjects 
left join Examinations on Students.student_id=Examinations.student_id and Subjects.subject_name=Examinations.subject_name
Group by 1,2,3
order by 1,3

