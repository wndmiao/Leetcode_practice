--570. Managers with at Least 5 Direct Reports
/*
Write an SQL query to report the managers with at least five direct reports.

Return the result table in any order.

The query result format is in the following example.
Employee table:
+-----+-------+------------+-----------+
| id  | name  | department | managerId |
+-----+-------+------------+-----------+
| 101 | John  | A          | None      |
| 102 | Dan   | A          | 101       |
| 103 | James | A          | 101       |
| 104 | Amy   | A          | 101       |
| 105 | Anne  | A          | 101       |
| 106 | Ron   | B          | 101       |
+-----+-------+------------+-----------+
Output: 
+------+
| name |
+------+
| John |
+------+
*/


Create table Employee (id int, name varchar(255), department varchar(255), managerId int);

insert into Employee (id, name, department, managerId) values ('101', 'John', 'A', '');
insert into Employee (id, name, department, managerId) values ('102', 'Dan', 'A', '101');
insert into Employee (id, name, department, managerId) values ('103', 'James', 'A', '101');
insert into Employee (id, name, department, managerId) values ('104', 'Amy', 'A', '101');
insert into Employee (id, name, department, managerId) values ('105', 'Anne', 'A', '101');
insert into Employee (id, name, department, managerId) values ('106', 'Ron', 'B', '101');

select * from employee

select e1.name 
from employee E1 join
	(select managerid, count(managerid) as count
	from employee 
	group by managerid
	having count(managerid)>=5) E2
	on E1.id = E2.managerId
	
