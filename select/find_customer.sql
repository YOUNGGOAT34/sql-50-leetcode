# Write your MySQL query statement below
#challenge: !=null does not exist in sql :is not null used instead
SELECT name FROM Customer
WHERE referee_id!=2 OR referee_id IS null