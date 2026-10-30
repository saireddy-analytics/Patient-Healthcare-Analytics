create database HealthCare_EMR;
use healthcare_emr;
alter table `healthcare billing` rename to Billing;
alter table insurance_Claims rename to ins_claims;
alter table insurance_Policy rename to ins_policy;
alter table insurance_provider rename to ins_provider;
alter table billing rename column `Amount Billed ($)` to Amount_billed;
alter table billing rename column `Insurance Covered ($)` to Insurance_Covered;
alter table billing rename column `Outstanding ($)` to Outstanding;
alter table billing rename column `Patient Paid ($)` to Patient_paid;
ALTER TABLE billing
    RENAME COLUMN `Bill ID` TO bill_id,
    RENAME COLUMN `Visit ID` TO visit_id,
    RENAME COLUMN `Patient ID` TO patient_id,
    RENAME COLUMN `Amount_billed` TO amount_billed,
    RENAME COLUMN `Insurance_Covered` TO insurance_covered,
    RENAME COLUMN `Patient_paid` TO patient_paid,
    RENAME COLUMN `Outstanding` TO outstanding,
    RENAME COLUMN `Payment Status` TO payment_status,
    RENAME COLUMN `Bill Date` TO bill_date,
    RENAME COLUMN `Payment Date` TO payment_date;
alter table doctors rename column `Doctor ID` to Doctor_ID,
rename column `Doctor Name` to Doctor_name,
rename column `Department ID` to Department_id,
rename column `Years Of Experience` to Years_of_experience,
rename column `Hospital Affiliation` to Hospital_Affiliation,
rename column `Clinic Name` to Clinic_name,
rename column `Phone Number` to Phone_Number,
rename column `License Number` to License_Number,
rename column `Is Active` to Is_Active;
ALTER TABLE ins_claims
    RENAME COLUMN `Claim ID` TO claim_id,
    RENAME COLUMN `Bill ID` TO bill_id,
    RENAME COLUMN `Visit ID` TO visit_id,
    RENAME COLUMN `Patient ID` TO patient_id,
    RENAME COLUMN `Policy Number` TO policy_number,
    RENAME COLUMN `Provider ID` TO provider_id,
    RENAME COLUMN `Provider Name` TO provider_name,
    RENAME COLUMN `Plan Type` TO plan_type,
    RENAME COLUMN `Claim Type` TO claim_type,
    RENAME COLUMN `Claim Date` TO claim_date,
    RENAME COLUMN `Amount Billed ($)` TO amount_billed,
    RENAME COLUMN `Amount Claimed ($)` TO amount_claimed,
    RENAME COLUMN `Approved Amount ($)` TO approved_amount,
    RENAME COLUMN `Patient Responsibility ($)` TO patient_responsibility,
    RENAME COLUMN `Outstanding ($)` TO outstanding,
    RENAME COLUMN `Claim Status` TO claim_status,
    RENAME COLUMN `Denial Reason` TO denial_reason,
    RENAME COLUMN `Processing Days` TO processing_days,
    RENAME COLUMN `Appeal Status` TO appeal_status,
    RENAME COLUMN `Submitted Electronically` TO submitted_electronically,
    RENAME COLUMN `Network Status` TO network_status;
    ALTER TABLE ins_provider
    RENAME COLUMN `Provider ID` TO provider_id,
    RENAME COLUMN `Provider Name` TO provider_name,
    RENAME COLUMN `Ticker Symbol` TO ticker_symbol,
    RENAME COLUMN `Primary Plan Type` TO primary_plan_type,
    RENAME COLUMN `Network Scope` TO network_scope,
    RENAME COLUMN `Member Satisfaction (1-5)` TO member_satisfaction,
    RENAME COLUMN `Customer Service Phone` TO customer_service_phone,
    RENAME COLUMN `Financial Rating` TO financial_rating;
    ALTER TABLE ins_policy
    RENAME COLUMN `Policy Number` TO policy_number,
    RENAME COLUMN `Patient ID` TO patient_id,
    RENAME COLUMN `Provider ID` TO provider_id,
    RENAME COLUMN `Provider Name` TO provider_name,
    RENAME COLUMN `Plan Type` TO plan_type,
    RENAME COLUMN `Coverage Tier` TO coverage_tier,
    RENAME COLUMN `Monthly Premium ($)` TO monthly_premium,
    RENAME COLUMN `Annual Deductible ($)` TO annual_deductible,
    RENAME COLUMN `Copay ($)` TO copay,
    RENAME COLUMN `Out-of-Pocket Max ($)` TO out_of_pocket_max,
    RENAME COLUMN `Coinsurance (%)` TO coinsurance,
    RENAME COLUMN `Coverage Start Date` TO coverage_start_date,
    RENAME COLUMN `Coverage End Date` TO coverage_end_date,
    RENAME COLUMN `Policy Status` TO policy_status,
    RENAME COLUMN `Rx Coverage` TO rx_coverage,
    RENAME COLUMN `Mental Health Coverage` TO mental_health_coverage,
    RENAME COLUMN `Dental Rider` TO dental_rider,
    RENAME COLUMN `Vision Rider` TO vision_rider;
    ALTER TABLE lab_test
    RENAME COLUMN `Lab Result ID` TO lab_result_id,
    RENAME COLUMN `Visit ID` TO visit_id,
    RENAME COLUMN `Ordered By (Doctor ID)` TO ordered_by_doctor_id,
    RENAME COLUMN `Test Name` TO test_name,
    RENAME COLUMN `Test Date` TO test_date,
    RENAME COLUMN `Test Year` TO test_year,
    RENAME COLUMN `Test Month` TO test_month,
    RENAME COLUMN `Test Month Name` TO test_month_name,
    RENAME COLUMN `Test Result` TO test_result,
    RENAME COLUMN `Numeric Result Value` TO numeric_result_value,
    RENAME COLUMN `Units` TO units,
    RENAME COLUMN `Reference Range` TO reference_range,
    RENAME COLUMN `Comments` TO comments;
    ALTER TABLE patient
    RENAME COLUMN `Patient ID` TO patient_id,
    RENAME COLUMN `First Name` TO first_name,
    RENAME COLUMN `LastName` TO last_name,
    RENAME COLUMN `Gender` TO gender,
    RENAME COLUMN `DateOfBirth` TO date_of_birth,
    RENAME COLUMN `Age` TO age,
    RENAME COLUMN `Blood Type` TO blood_type,
    RENAME COLUMN `Phone Number` TO phone_number,
    RENAME COLUMN `Alternate Phone Number` TO alternate_phone_number,
    RENAME COLUMN `Address` TO address,
    RENAME COLUMN `State` TO state,
    RENAME COLUMN `City` TO city,
    RENAME COLUMN `Country` TO country,
    RENAME COLUMN `Insurance Provider` TO insurance_provider,
    RENAME COLUMN `Policy Number` TO policy_number,
    RENAME COLUMN `Marital Status` TO marital_status,
    RENAME COLUMN `Race` TO race,
    RENAME COLUMN `Ethnicity` TO ethnicity,
    RENAME COLUMN `Chronic Conditions` TO chronic_conditions,
    RENAME COLUMN `Allergies` TO allergies,
    RENAME COLUMN `Medical History` TO medical_history,
    RENAME COLUMN `Patient Status` TO patient_status,
    RENAME COLUMN `Registration Date` TO registration_date,
    RENAME COLUMN `Emergency Contact Name` TO emergency_contact_name,
    RENAME COLUMN `Emergency Contact Phone` TO emergency_contact_phone;
    ALTER TABLE treatment
    RENAME COLUMN `Treatment ID` TO treatment_id,
    RENAME COLUMN `Visit ID` TO visit_id,
    RENAME COLUMN `Treatment Type` TO treatment_type,
    RENAME COLUMN `Treatment Name` TO treatment_name,
    RENAME COLUMN `Medication Prescribed` TO medication_prescribed,
    RENAME COLUMN `Dosage` TO dosage,
    RENAME COLUMN `Instructions` TO instructions,
    RENAME COLUMN `Treatment Start Date` TO treatment_start_date,
    RENAME COLUMN `Treatment End Date` TO treatment_end_date,
    RENAME COLUMN `Duration Days` TO duration_days,
    RENAME COLUMN `Status` TO status,
    RENAME COLUMN `Outcome` TO outcome,
    RENAME COLUMN `Direct Treatment Cost ($)` TO direct_treatment_cost,
    RENAME COLUMN `Total Episode Cost ($)` TO total_episode_cost,
    RENAME COLUMN `Treatment Description` TO treatment_description;
    ALTER TABLE visit
    RENAME COLUMN `Visit ID` TO visit_id,
    RENAME COLUMN `Patient ID` TO patient_id,
    RENAME COLUMN `Doctor ID` TO doctor_id,
    RENAME COLUMN `Visit Date` TO visit_date,
    RENAME COLUMN `Visit Year` TO visit_year,
    RENAME COLUMN `Visit Month` TO visit_month,
    RENAME COLUMN `Visit Month Name` TO visit_month_name,
    RENAME COLUMN `Visit Quarter` TO visit_quarter,
    RENAME COLUMN `Visit Type` TO visit_type,
    RENAME COLUMN `Visit Status` TO visit_status,
    RENAME COLUMN `Diagnosis` TO diagnosis,
    RENAME COLUMN `Diagnosis Code` TO diagnosis_code,
    RENAME COLUMN `Reason for Visit` TO reason_for_visit,
    RENAME COLUMN `Follow Up Required` TO follow_up_required,
    RENAME COLUMN `Prescribed Medications` TO prescribed_medications,
    RENAME COLUMN `Visit Duration (mins)` TO visit_duration_mins;
    ALTER TABLE department
    RENAME COLUMN `Department ID` TO department_id,
    RENAME COLUMN `Department Name` TO department_name,
    RENAME COLUMN `Specialty Covered` TO specialty_covered,
    RENAME COLUMN `Location` TO location,
    RENAME COLUMN `Department Type` TO department_type;
desc billing;
desc doctors;
desc ins_claims;
desc ins_provider;
desc ins_policy;
desc lab_test;
desc patient;
desc treatment;
desc visit;
desc department;
select * from department;
select * from doctors;
select * from patient where patient_id is null;
select patient_id,count(*) from patient group by 1 having count(patient_id)>1;
alter table patient add primary key (patient_id);		
alter table doctors add primary key (doctor_id);
alter table visit add primary key (visit_id);
alter table treatment add primary key (treatment_id);
alter table lab_test add primary key (lab_result_id);
alter table billing add primary key (bill_id);
alter table department add primary key (department_id);

# Adding foreign keys for the table columns
ALTER TABLE doctors
ADD CONSTRAINT fk_doctor_department
FOREIGN KEY (department_id)
REFERENCES department(department_id);

#For visit table adding Foreign key
ALTER TABLE visit
ADD CONSTRAINT fk_visit_patient
FOREIGN KEY (patient_id)
REFERENCES patient(patient_id);

ALTER TABLE visit
ADD CONSTRAINT fk_visit_doctor
FOREIGN KEY (doctor_id)
REFERENCES doctors(doctor_id);

#For Treatment table adding Foreign key
ALTER TABLE treatment
ADD CONSTRAINT fk_treatment_visit
FOREIGN KEY (visit_id)
REFERENCES visit(visit_id);

#For Lab Test table adding Foreign key
ALTER TABLE lab_test
ADD CONSTRAINT fk_lab_visit
FOREIGN KEY (visit_id)
REFERENCES visit(visit_id);

ALTER TABLE lab_test
ADD CONSTRAINT fk_lab_doctor
FOREIGN KEY (ordered_by_doctor_id)
REFERENCES doctors(doctor_id);

#For bilng table adding Foreign key
ALTER TABLE billing
ADD CONSTRAINT fk_billing_visit
FOREIGN KEY (visit_id)
REFERENCES visit(visit_id);

ALTER TABLE billing
ADD CONSTRAINT fk_billing_patient
FOREIGN KEY (patient_id)
REFERENCES patient(patient_id);

#--------------------------------------------------------------------------------------------------------------------------------------------------

#Total Patients
select count(patient_id) from patient;
#Total Doctors
select count(doctor_id) from doctors;
#Total Visits
select count(visit_id) from visit;
#Average Age of Patients
select round(avg(age),0) from patient;
#Top 5 Diagnosed Conditions
select diagnosis,count(diagnosis) from visit group by diagnosis order by 2 desc;
#Follow-Up Rate
select round((sum(case
when follow_up_required ='Yes' then 1 else 0 end) *100.0)/ count(patient_id),2) as Follow_up_rate  from visit;
#Average Treatment Cost Per Visit
select round(avg(total_episode_cost), 2) as average_treatment_cost_per_visit from treatment;
#Total Lab Tests Conducted
select count(lab_result_id) as total_lab_tests from lab_test;
#Percentage of Abnormal Lab Results
select round((sum(case
when test_result = 'Abnormal' then 1 else 0 end) * 100.0) / count(*),2) as abnormal_lab_result_percentage
from lab_test;
#Doctor Workload (Avg. Patients Per Doctor)
select round(count(distinct visit_id) * 1.0 /(select count(*) from doctors),2) as average_patients_per_doctor
from visit;


#--------------------------------------------------------------------------------------------------------------------------------------------------

select
    concat(p.first_name, ' ', p.last_name) as patient_name,
    v.visit_date,
    v.diagnosis,
    t.treatment_name,
    l.test_name,
    l.test_result
from patient as p
join visit as v
    on p.patient_id = v.patient_id
left join treatment as t
    on v.visit_id = t.visit_id
left join lab_test as l
    on v.visit_id = l.visit_id;

#--------------------------------------------------------------------------------------------------------------------------------------------------

#CASE STUDY-1
#Disease Trend Analysis

#What are the most frequently diagnosed diseases?

select * from visit;
select diagnosis,count(diagnosis) from visit group by diagnosis order by 2 desc;

#Which age groups are most affected by each disease?
select * from patient;
select * from visit;

select v.diagnosis, case 
when p.age between 0 and 17 then 'Children [0-17]'
when p.age between 18 and 35 then 'Young Adults [18-35]'
when p.age between 36 and 55 then 'Adults [36-55]'
else 'Senior Citizens [55+]'
end as Age_Group ,
count(*) Total_Patients from patient as p join visit as v on p.patient_id=v.patient_id
group by v.diagnosis,age_group
order by 1,2;

#Which age groups are most affected by each disease? 
with t as 
(select v.diagnosis, case
when p.age between 0 and 17 then 'Children [0-17 Age]'
when p.age between 18 and 35 then 'Young Adults [18-35 Age]'
when p.age between 36 and 55 then 'Adults [36-55 Age]'
else 'Senior Citizens' 
end as Age_Group, 
count(*) as No_Of_Patients 
from patient as p join visit as v on p.patient_id=v.patient_id
group by 1,2), 
rank_data as
(select *,row_number() over(partition by diagnosis order by No_of_Patients desc) as rnk from t)
select diagnosis,age_group,no_of_patients from rank_data where rnk=1;


# Which months have the highest number of disease cases?

select * from visit;
select visit_month_name as Month,count(diagnosis) as Total_Diseases from visit group by 1 order by 2 desc;

with t as
(select visit_month_name as Month, diagnosis, count(diagnosis) as Total_Diseases from visit group by 1,2 ),
rank_data as 
(select *, row_number() over(partition by month order by Total_diseases desc) as rnk from t)
select month,diagnosis,total_diseases from rank_data where rnk=1 order by total_diseases desc;


# CASE Study-2
# Doctor & Department Performance

# How many patients does each doctor handle?
select * from visit;
select * from doctors;

select v.doctor_id,d.doctor_name ,count(distinct v.patient_id) as Total_Patients 
from visit as v join doctors as d on v.doctor_id=d.doctor_id 
group by 1,2 order by 3 desc;

# Which departments handle the highest number of disease cases?

select * from visit;
select * from department;
select * from doctors;

select d.department_id,dp.department_name,count(v.diagnosis) as Disease_Cases
from doctors as d join visit as v on d.doctor_id=v.doctor_id 
join department as dp on dp.department_id=d.department_id group by 1,2  order by 3 desc;


#Which doctors have the highest follow-up rate?
select * from doctors;
select * from visit;
select * from department;

select v.doctor_id,d.doctor_name ,count(v.patient_id) Total_Patients, sum(case
when follow_up_required = 'Yes' then  1 else 0 end) as Total_follow_up_cases,
round((sum(case
when follow_up_required ='Yes' then 1 else 0 end) *100.0)/ count(patient_id),2) as Follow_up_rate 
from visit as v join doctors as d on v.doctor_id=d.doctor_id 
group by 1,2 order by 5 desc;


# Which doctors generate the highest treatment revenue?
select * from treatment;
select * from visit;
select * from doctors;

select d.doctor_id,d.doctor_name, round(sum(t.total_episode_cost),2) as Total_Revenue 
from treatment as t join visit as v on t.visit_id=v.visit_id join doctors as d on d.doctor_id = v.doctor_id group by 1,2 order by 2 desc;

#Which doctors perform the highest number of successful treatments?

select * from doctors;
select * from treatment;
select * from visit;

with t as(
select d.doctor_id,d.doctor_name,sum(case
when t.outcome = 'Successful' then 1 else 0 end) as T_Successful_treatments
from doctors as d join visit as v on d.doctor_id=v.doctor_id join treatment as t on t.visit_id=v.visit_id group by 1,2 order by 2 desc)
select doctor_name,T_Successful_treatments,dense_rank() over (order by T_Successful_treatments desc) as rnk from t;


#CASE Study-3
#Patient Care Analysis

# Which age groups require the highest follow-up rate?
select * from visit;
select * from patient;

select case 
when p.age between 0 and 17 then 'Children [0-17 Age]'
when p.age between 18 and 35 then 'Young Adults [18-35 Age]'
when p.age between 36 and 55 then 'Adults [36-55 Age]'
else 'Senior Citizens' 
end as Age_Group, 
round((sum(case
when follow_up_required = 'Yes' then 1 else 0 end) *100) /count(v.patient_id),2) as Follow_up_rate
from patient as p join visit as v on p.patient_id=v.patient_id group by 1 order by 2 desc;

# Which age groups visit hospital the most?

select * from patient;
select * from visit;

select case
when p.age between 0 and 17 then 'Children [0-17 Age]'
when p.age between 18 and 35 then 'Young Adults [18-35 Age]'
when p.age between 36 and 55 then 'Adults [36-55 Age]'
else 'Senior Citizens' 
end as Age_Group, count(*) Total_Patients
from patient as p join visit as v on p.patient_id=v.patient_id group by 1 order by 2 desc;

# Which age groups contribute the highest hospital revenue?
select * from patient;
select * from visit;
select * from treatment;

select case 
when p.age between 0 and 17 then 'Children [0-17 Age]'
when p.age between 18 and 35 then 'Young Adults [18-35 Age]'
when p.age between 36 and 55 then 'Adults [36-55 Age]'
else 'Senior Citizens' 
end as Age_Group,count(v.visit_id)as Total_Visits ,round(sum(t.total_episode_cost),2) as Revenue
from patient as p join visit as v on p.patient_id=v.patient_id join treatment as t on t.visit_id=v.visit_id group by 1 order by 2 desc;



#CASE Study-4: Treatment Cost & Effectiveness Analysis

# Which treatments are most frequently performed?
select * from treatment;
select * from visit;

select treatment_name,count(treatment_name) as Total_Performed from treatment group by 1 order by 2 desc;

# Which treatments have the highest average treatment cost?
select * from treatment;
select treatment_name,round(avg(total_episode_cost),2) as AVG_Treatment_Cost from treatment group by 1 order by 2 desc;

# CASE Study-5: Insurance & Revenue Analysis
# What is the total hospital revenue?

select * from treatment;
select round(sum(total_episode_cost),2) as T_Hospital_Revenue from treatment;

# How much payment is still outstanding
select * from billing;
select round(sum(outstanding),2) from billing;

# What is the insurance claim approval rate
select * from ins_claims;

select claim_status,count(*) as total_claims,
round((count(*) * 100.0) /(select count(*) from ins_claims),2) as percentage
from ins_claims group by claim_status order by total_claims desc;

# Which insurance providers handle the highest number of claims?

select * from ins_provider;
select * from ins_claims;
select ip.provider_name, count(ic.claim_id) as T_Claims 
from ins_provider as ip join ins_claims as ic on ip.provider_id=ic.provider_id group by 1 order by 2 desc;

# Which insurance providers have the highest claim approval rate?

select * from ins_provider;
select * from ins_claims;
select ip.provider_name, round((sum(case 
when claim_status='Approved' then 1 else 0 end) *100)/count(ic.claim_status),2) as Claim_Approval_Rate 
from ins_provider as ip join ins_claims as ic on ip.provider_id=ic.provider_id group by 1 order by 2 desc;

