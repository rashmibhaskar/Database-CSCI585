COVID 19 TRACING SYSTEM 


BUSINESS CONSTRAINTS :
1. Ability to register
2. Determine COVID 19 Testing details both onsite and offsite locations
3. Can track details of employee activities and rooms accessed.
4. Determine details of people who have been in close contact with the COVID positive person and sending notifications to concerned people.
5. Ability to track health status of COVID positive employees.
6. Allow sick employee to get back to work 2 weeks after quarantine and once he/she is ‘WELL’
7. Keep a track of employees who are ‘DECEASED’


ASSUMPTIONS:
1. There is only one company
2. The company has only one building where all rooms or facilities have unique room numbers.
3. The COVID testing/diagnosis can be done in any location.
4. The reason for diagnosis would be either of the following: ‘SHOWED SYMPTOMS’, ‘SELF REPORTED’ or ‘RANDOM’. Here, RANDOM value would be allotted to individuals who were just pulled out to get tested in case they are asymptomatic.
5. The daily status report can be self or be done on behalf of the sick employee via authorized guest user.The status value can be any one of the following: ‘SICK’ , ‘HOSPITALIZED’, ‘WELL’ or ‘DECEASED’ .
   In addition to these assumptions, this solution can be scalable to multiple companies with multiple buildings in real time just by considering new entities for each of them respectively.Moreover, the notifications can be sent out to concerned people by channeling them either manually or automatically.


ENTITIES:
1. EMPLOYEE - to save details of registered employees.
2. EMPLOYEE COVID TEST - to save details of covid tests of different employees at different locations.
3. EMPLOYEE ACTIVITY - to save details of all rooms which were accessed by employees at different times.
4. ROOM - has details of all the rooms in the building.
5. DAILY STATUS REPORT - tracks daily health details of all the employees who were tested positive for COVID-19.
6. GUEST USER - to save daily health details on behalf of the sick employee.


 RELATIONSHIPS:
1. EMPLOYEE - gets tested - EMPLOYEE COVID TEST - 1:M
2. EMPLOYEE - has - EMPLOYEE ACTIVITY - M:N
3. ROOM - accessed by - EMPLOYEE ACTIVITY - 1:M
4. EMPLOYEE - report sick status to - DAILY STATUS REPORT - 1:M
5. GUEST USER - report sick employee’s status to - DAILY STATUS REPORT - 1:M