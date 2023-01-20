-- subquery
select last_name, salary
from employees
where salary > (select salary
                from employees
                where last_name = 'Abel');
                
select last_name, job_id, salary
from employees
where job_id = (select job_id
                from employees
                where last_name = 'Ernst')
and salary > (select salary
                from employees
                where last_name = 'Ernst');
                
-- ����: Kochhar ���� �����ϴ� ������� �̸�, ���� �μ���ȣ�� ��ȸ�϶�.
select last_name, job_id, department_id
from employees
where manager_id = (select employee_id
                    from employees
                    where last_name = 'Kochhar');