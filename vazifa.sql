CREATE TABLE employees (
    id SERIAL PRIMARY KEY,  
    first_name VARCHAR(100),  
    last_name VARCHAR(100), 
    position VARCHAR(100),    
    salary NUMERIC(10, 2), 
    hire_date DATE,       
    department_id integer REFERENCES departments(depart_id)      
);

---------------------------------------------

CREATE TABLE departments (
    depart_id SERIAL PRIMARY KEY,    
    department_name VARCHAR(100) 
);

---------------------------------------------

CREATE TABLE projects (
    project_id SERIAL PRIMARY KEY,           
    project_name VARCHAR(255),   
    start_date DATE,               
    end_date DATE,                  
    budget NUMERIC(15, 2)    
);

-------------------------------

SELECT first_name|| ' ' ||last_name AS "Full Name"
FROM employees;

select salary from employees
order by salary;

select * from employees where salary > 5000 and salary < 150000;

select * from employees offset 10 limit 5;

select * from employees where salary in(2000,10000);

select * from employees where salary between 5000 and 150000;

select * from employes where first_name ilike 'a';

