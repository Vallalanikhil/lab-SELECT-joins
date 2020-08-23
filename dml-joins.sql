1.
select * from user_new inner join role on user_new.id = role.id order by 2 asc

2.
select * from user_new left outer join role on user_new.id=role.id order by 2 asc
3.
select user_new.name,role.name from user_new inner join role on user_new.name=role.name

4.
select user_new.phonenumber, user_new.emailid, profile.batch, profile.designation
from user_new inner join profile on user_new.id=profile.id
select profile.degree_id,degree.id, profile.batch, profile.designation from profile right outer join degree on profile.id=degree.id

select degree.department_id,department_id, department.name from degree right outer join department on degree.id=department.id

select profile.id,experience.profile_id,profile.batch,profile.designation,experience.company_name from profile right outer join experience on profile.id=experience.id

select user_new.phonenumber, user_new.emailid, experience.company_name
from user_new,experience
where user_name.name ='ProGrad' and experience.currentValue=3

SELECT user_new.phonenumber, user_new.emailid, profile.batch,department.name, profile.designation, experience.company_name 
FROM user_new INNER JOIN profile
ON user_new.role_id = profile.id
INNER JOIN degree
ON profile.degree_id = degree.id
INNER JOIN department 
ON degree.department_id = department.id
INNER JOIN experience
ON profile.id = experience.profile_id
WHERE user_new.emailid LIKE 'ijkl%'; 


5.
select user_new.name, role.name
from user_new inner join role
on user_new.role_id=role.id
inner join profile
on user_new.profile_id=profile.id
INNER JOIN profile_skills ON
profile.id = profile_skills.skill_id
where role.name LIKE 'designer';

6.
select user_new.name, role.name, experience.company_name 
from User_new INNER JOIN role ON
user_new.role_id = role.id INNER JOIN profile ON
user_new.id = profile.id INNER JOIN experience ON 
experience.profile_id = profile.id
WHERE role.name LIKE 'designer'
ORDER BY user_new.name, experience.company_name;

7.
select user_new.name, role.name, experience.company_name 
from User_new INNER JOIN role ON
user_new.role_id = role.id INNER JOIN profile ON
user_new.id = profile.id INNER JOIN experience ON 
experience.profile_id = profile.id
WHERE role.name LIKE 'designer'
ORDER BY user_new.name, experience.company_name;

8.
SELECT user_new.emailid,experience.company_name FROM 
user_new INNER JOIN role ON 
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN experience ON
experience.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND experience.currentvalue=1
ORDER BY user_new.name;

9.
SELECT user_new.name,experience.company_name FROM 
user_new INNER JOIN role ON 
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN experience ON
experience.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND experience.currentvalue=1 and profile.batch='2008' 
ORDER BY user_new.name;

10.
select USER_NEW.name, USER_NEW.EMAILID, USER_NEW.PHONENUMBER, profile.ADDRESS from
USER_NEW full join role on
USER_NEW.ROLE_ID = role.id
full join profile on 
USER_NEW.PROFILE_ID = profile.id
where role.name like 'Alumni' and USER_NEW.PROFILE_ID is not null
order by USER_NEW.name;

11.
Select user_new.name, user_new.emailid, user_new.phonenumber, profile.address FROM
user_new INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
WHERE role.name LIKE 'Alumni' AND profile.batch='For'
ORDER BY user_new.name;


12.
select user_new.name, user_new.emailid, user_new.phonenumber, profile.address
from user_new inner join role on
user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
WHERE role.name LIKE 'Alumni' AND degree.name='EEE'
ORDER BY user_new.name;

13.
select user_new.name, user_new.emailid, user_new.phonenumber, profile.address
from user_new inner join role
on user_new.role_id = role.id
INNER JOIN profile ON 
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
INNER JOIN department on
degree.department_id=department.id
where role.name='Alumni' and department.name='EEE'
ORDER BY user_new.name;



14.
Select user_new.name AS USERNAME, user_new.emailid AS USER_EMAIL, user_new.phonenumber, profile.address AS PROFILE_ADDRESS,
higher_degree.university_name AS HigherDegree FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
FULL JOIN higher_degree ON
profile.id = higher_degree.id
WHERE role.name LIKE 'Alumni' AND higher_degree.degree_name IS NOT NULL
ORDER BY user_new.name, higher_degree.university_name;


15.
Select user_new.name  AS USERNAME , higher_degree.university_name AS HigherDegree FROM
user_new FULL JOIN role ON
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
FULL JOIN higher_degree ON
profile.id = higher_degree.id
WHERE role.name LIKE 'Alumni' AND higher_degree.degree_name IS NOT NULL
ORDER BY user_new.name, higher_degree.university_name;

16.
select user_new.name AS USERNAME, user_new.emailid, user_new.phonenumber, profile.address
FROM user_new full join role on
user_new.role_id = role.id
FULL JOIN profile ON 
user_new.profile_id = profile.id
FULL JOIN degree ON
profile.degree_id=degree.id
FULL JOIN department on
degree.department_id=department.id
full join higher_degree on
degree.id = higher_degree.id
WHERE role.name LIKE 'designer' AND higher_degree.degree_name = 'BE'
ORDER BY user_new.name;


17.
SELECT user_new.name, profile.batch FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
WHERE role.name = 'Guide' AND profile.gender = 'Female'
ORDER BY user_new.name;

18.
SELECT user_new.name, profile.batch, degree.name FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
WHERE role.name = 'Alumni' AND profile.gender = 'Female'
ORDER BY user_new.name;

19.
SELECT user_new.name, profile.batch, degree.name, department.name FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN degree ON
profile.degree_id = degree.id
INNER JOIN department ON
degree.department_id = department.id
WHERE role.name = 'Alumni' AND profile.gender = 'Female'
ORDER BY user_new.name;

20.
SELECT degree.name AS DEGREE_NAME, department.name AS DEPT_NAME from degree
INNER JOIN department ON
degree.department_id = department.id
ORDER BY degree.name;

21.
SELECT user_new.name, profile.designation FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
WHERE role.name = 'Alumni' AND profile.gender = 'Male'
ORDER BY user_new.name;

22.
SELECT user_new.name, profile.designation FROM user_new
INNER JOIN role ON
user_new.role_id = role.id
INNER JOIN profile ON
user_new.profile_id = profile.id
INNER JOIN experience ON
experience.profile_id = profile.id
WHERE role.name = 'Alumni' AND experience.currentvalue=1 AND experience.company_name = 'CTS'
ORDER BY user_new.name;

23.
SELECT user_new.name, querytable.content FROM user_new
INNER JOIN querytable ON
user_new.id = querytable.user_id
ORDER BY user_new.name;

24.
SELECT user_new.name, querytable.content FROM user_new
FULL JOIN querytable ON
user_new.id = querytable.user_id
WHERE querytable.parent_id IS NOT NULL
ORDER BY user_new.name;

25.
SELECT user_new.name, post.content FROM user_new
INNER JOIN post ON
user_new.id = post_type.user_id
where post_type.name='business'
ORDER BY user_new.name, post.dateof, post.content;     

26.
select user_new.name, post.content from user_new
inner join post on
user_new.id=post.user_id
where post.dateof='2013'
order by user_new.name, post.dateof, post.content;     


27.
select user_new.name, department.name from user_new
full join role on
user_new.role_id=role.id
full join profile on user_new.profile_id=profile.id
full join degree on department_id=degree.department_id
full join profile on profile.id=skill.profile_id
where skill.name='Programming'  
order by user_new.name;   

28.
select user_new.name as USERNAME, event.name from user_new
inner join event on 
user_new.username=event.name
where role.name='Alumni'
order by user_new.name,event.dateof desc




