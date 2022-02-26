--PREGUNTA 1
select E.first_name, E.hire_date, E.salary , D.department_name, J.job_title 
from employees as E
left join departments AS D 
on D.department_id =  E.employee_id
left join jobs as J
on J.job_id = E.job_id 
where salary between 4500 and 15001;

--PREGUNTA 2
select e.employee_id , e.first_name , c.country_name 
from employees e 
inner join jobs j on j.job_id = e.job_id
inner join departments d on d.department_id = e.department_id 
inner join locations l on l.location_id = d.location_id 
inner join countries c on c.country_id = l.country_id 
where e.job_id = 'FI_ACCOUNT'

--PREGUNTA 3
select e.*, c.country_name  from employees e 
inner join departments d on d.department_id = e.department_id 
inner join locations l on l.location_id = d.location_id 
inner join countries c on c.country_id = l.country_id 
where c.country_id in ('MX','US')

-- PREGUNTA 4
select e.*  from employees e 
inner join departments d on d.department_id = e.department_id 
inner join locations l on l.location_id = d.location_id 
inner join countries c on c.country_id = l.country_id 
where c.country_id in ('UK') and d.department_id = 80


-- PREGUNTA 5
select e.first_name , e.last_name  from employees e 
inner join departments d on d.department_id = e.department_id 
inner join locations l on l.location_id = d.location_id 
inner join countries c on c.country_id = l.country_id 
inner join regions r on r.region_id = c.region_id 
where r.region_id = 2 and e.salary < (select avg(e2.salary)  from employees e2 where e2.job_id = e.job_id)


-- PREGUNTA 6
select * from regions r 



