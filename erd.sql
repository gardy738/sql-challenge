-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/PUbDXG
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Create the Diagram for all six csv files.

CREATE TABLE "Departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL,
    CONSTRAINT "pk_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "DepartmentEmployee" (
    "dept_no" varchar   NOT NULL,
    "emp_no" int   NOT NULL
);

CREATE TABLE "DepartmentManager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" int   NOT NULL
);

CREATE TABLE "Employee" (
    "emp_no" int   NOT NULL,
    "emp_title" varchar   NOT NULL,
    "birth_date" varchar   NOT NULL,
    "first_name" varchar(200)   NOT NULL,
    "last_name" varchar(200)   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" varchar   NOT NULL,
    CONSTRAINT "pk_Employee" PRIMARY KEY (
        "emp_no"
     ),
    CONSTRAINT "uc_Employee_first_name" UNIQUE (
        "first_name"
    )
);



CREATE TABLE "Salaries" (
    "emp_no" int   NOT NULL,
    "salaries" float   NOT NULL,
    CONSTRAINT "pk_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "tit" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL
);


select employees.emp_no, employees.last_name, employees.first_name, employees.sex,salaries.salary
from salaries
inner join employees on
employees.emp_no=salaries.emp_no;

select employees.first_name, employees.last_name, employees.hire_date
from employees
where hire_date = 1986;


ALTER TABLE "DepartmentEmployee" ADD CONSTRAINT "fk_DepartmentEmployee_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Departments" ("dept_no");

ALTER TABLE "DepartmentManager" ADD CONSTRAINT "fk_DepartmentManager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "DepartmentEmployee" ("emp_no");

ALTER TABLE "Employee" ADD CONSTRAINT "fk_Employee_emp_no" FOREIGN KEY("emp_no")
REFERENCES "DepartmentManager" ("emp_no");

ALTER TABLE "Salaries" ADD CONSTRAINT "fk_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Employee" ("emp_no");

ALTER TABLE "tit" ADD CONSTRAINT "fk_tit_title" FOREIGN KEY("title")
REFERENCES "Employee" ("emp_title");







select employees.emp_no, employees.last_name, employees.first_name, employees.sex,salaries.salary
from salaries
inner join employees on
employees.emp_no=salaries.emp_no;

select employees.first_name, employees.last_name, employees.hire_date
from employees
where hire_date = 1986;