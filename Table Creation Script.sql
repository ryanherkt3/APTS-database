CREATE TABLE region
        (region_code char(2) CONSTRAINT region_code_pk PRIMARY KEY, 
         region_name VARCHAR2(25) CONSTRAINT region_name_nn NOT NULL,
         CONSTRAINT region_code_ck CHECK (region_code IN ('NW', 'SW', 'MN', 'MS', 'NE', 'SE')));

CREATE TABLE customer
        (customer_id number(10) CONSTRAINT customer_id_pk PRIMARY KEY,
         region_code char(2) CONSTRAINT customer_region_code_nn NOT NULL, 
         customer_name VARCHAR2(255) CONSTRAINT customer_name_nn NOT NULL,
         customer_phone_number number(10),
         CONSTRAINT region_code_fk FOREIGN KEY (region_code) REFERENCES region (region_code));

CREATE TABLE employee
        (employee_id number(2) CONSTRAINT employee_id_pk PRIMARY KEY,
         manager_id number(2), 
         region_code char(2) CONSTRAINT employee_region_code_nn NOT NULL, 
         employee_last_name char(20) CONSTRAINT employee_last_name_nn NOT NULL,
         employee_middle_initial char(1),
         employee_first_name char(20) CONSTRAINT employee_first_name_nn NOT NULL,
         employee_hire_date date CONSTRAINT employee_hire_date_nn NOT NULL,
         CONSTRAINT employee_region_code_fk FOREIGN KEY (region_code) REFERENCES region (region_code),
         CONSTRAINT manager_id_fk FOREIGN KEY (manager_id) REFERENCES employee (employee_id));

CREATE TABLE skill
        (skill_id number(3) CONSTRAINT skill_id_pk PRIMARY KEY,
         skill_description varchar2(255) CONSTRAINT skill_desc_nn NOT NULL,
         skill_rate_of_pay number(4,2) CONSTRAINT skill_payrate_nn NOT NULL);

CREATE TABLE skillsinventory
        (employee_id number(2),
         skill_id number(3),
         CONSTRAINT inventory_employee_id_fk FOREIGN KEY (employee_id) REFERENCES employee (employee_id),
         CONSTRAINT inventory_skill_id_fk FOREIGN KEY (skill_id) REFERENCES skill (skill_id),
         CONSTRAINT inventory_pk PRIMARY KEY (employee_id, skill_id));
         
CREATE TABLE project
        (project_id number(4) CONSTRAINT project_pk PRIMARY KEY,
         manager_id number(2) CONSTRAINT project_manager_id_nn NOT NULL,
         customer_id number(10) CONSTRAINT project_customer_id_nn NOT NULL,
         project_description varchar2(255) CONSTRAINT project_desc_nn NOT NULL,
         project_contract_date date CONSTRAINT project_contract_date_nn NOT NULL,
         project_estimated_start date CONSTRAINT project_estimated_start_nn NOT NULL,
         project_estimated_end date CONSTRAINT project_estimated_end_nn NOT NULL,
         project_estimated_budget number (5,2) CONSTRAINT project_estimated_budget_nn NOT NULL,
         project_actual_start date CONSTRAINT project_actual_start_nn NOT NULL,
         project_actual_end date CONSTRAINT project_actual_end_nn NOT NULL,
         project_actual_cost number (5,2) CONSTRAINT project_actual_cost_nn NOT NULL,
         CONSTRAINT project_manager_id_fk FOREIGN KEY (manager_id) REFERENCES employee (employee_id),
         CONSTRAINT project_customer_id_fk FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
         CONSTRAINT estimated_date_ck CHECK (project_estimated_end > project_estimated_start),
         CONSTRAINT actual_date_ck CHECK (project_actual_end > project_actual_start),
         CONSTRAINT contract_date_ck CHECK (project_actual_start > project_contract_date));

CREATE TABLE task
        (task_id number(3) CONSTRAINT task_pk PRIMARY KEY,
         task_description varchar2(255) CONSTRAINT task_desc_nn NOT NULL,
         task_start_date date CONSTRAINT task_start_date_nn NOT NULL,
         task_end_date date CONSTRAINT task_end_date_nn NOT NULL,
         CONSTRAINT task_date_ck CHECK (task_end_date > task_start_date));

CREATE TABLE taskskills
        (task_id number(3),
         skill_id number(3),
         ts_num_employees number(2),
         CONSTRAINT taskskills_task_id_fk FOREIGN KEY (task_id) REFERENCES task (task_id),
         CONSTRAINT taskskills_skill_id_fk FOREIGN KEY (skill_id) REFERENCES skill (skill_id),
         CONSTRAINT taskskills_pk PRIMARY KEY (task_id, skill_id));

CREATE TABLE schedule
        (project_id number(4),
         task_id number(3),
         skill_id number(3),
         CONSTRAINT schedule_project_id_fk FOREIGN KEY (project_id) REFERENCES project (project_id),
         CONSTRAINT schedule_taskskills_fk FOREIGN KEY (task_id, skill_id) REFERENCES taskskills (task_id, skill_id),
         CONSTRAINT schedule_pk PRIMARY KEY (project_id, task_id, skill_id));

CREATE TABLE assignment
        (assignment_id number(3) CONSTRAINT assignment_pk PRIMARY KEY,
         employee_id number(2) CONSTRAINT assignment_employee_id_nn NOT NULL,
         schedule_project_id number(4) CONSTRAINT assignment_project_id_nn NOT NULL,
         schedule_task_id number(3) CONSTRAINT assignment_task_id_nn NOT NULL,
         schedule_skill_id number(3) CONSTRAINT assignment_skill_id_nn NOT NULL,
         assignment_start_date date CONSTRAINT assignment_start_date_nn NOT NULL,
         assignment_end_date date,
         CONSTRAINT assignment_employee_id_fk FOREIGN KEY (employee_id) REFERENCES employee (employee_id),
         CONSTRAINT assignment_schedule_fk FOREIGN KEY (schedule_project_id, schedule_task_id, schedule_skill_id) REFERENCES 
         schedule (project_id, task_id, skill_id),
         CONSTRAINT assignment_date_ck CHECK (assignment_end_date > assignment_start_date));

CREATE TABLE bill
        (bill_number number(3) CONSTRAINT bill_pk PRIMARY KEY,
         customer_id number(10) CONSTRAINT bill_customer_id_nn NOT NULL,
         bill_cost number (3,2) CONSTRAINT bill_cost_nn NOT NULL,
         CONSTRAINT bill_customer_id_fk FOREIGN KEY (customer_id) REFERENCES 
         customer (customer_id));

CREATE TABLE log
        (log_date date,
         employee_id number(2),
         bill_number number(3),
         assignment_id number(3) CONSTRAINT log_assignment_id_nn NOT NULL,
         log_hours_worked number(2),
         CONSTRAINT log_employee_id_fk FOREIGN KEY (employee_id) REFERENCES employee (employee_id),
         CONSTRAINT log_assignment_id_fk FOREIGN KEY (assignment_id) REFERENCES assignment (assignment_id),
         CONSTRAINT log_bill_number_fk FOREIGN KEY (bill_number) REFERENCES bill (bill_number),
         CONSTRAINT log_pk PRIMARY KEY(log_date, employee_id));

COMMIT;
