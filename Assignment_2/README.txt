COVID 19 TRACING SYSTEM 

DATABASE SOFTWARE USED IS MySQL

FOLLOWING ARE THE ASSUMPTIONS MADE IN ADDITION TO THE GIVEN SPECIFICATIONS IN THE HOME WORK STATEMENT

ENTITIES
1. EMPLOYEE: e_id is the primary key
	    floor_no currently used is until 5 only

2. SYMPTOM: row_id is the primary key and is incremented automatically.

3. SCAN: scan_id is the primary key and is incremented automatically.
	scan_time follows military timing pattern i.e, 24 hr format starting from 0000 t0 2359 	
	that signifies 12AM to 11:59 PM respectively.
	temperature is measured in Fahrenheit.

4. TEST: test_id is the primary key and is incremented automatically.
	test_time follows military timing pattern as above.

5. MEETING: meeting_id is the primary key and is incremented automatically.
	    currently there is only one meeting.

6. NOTIFICATION: notification_id is the primary key and is incremented automatically.

7. CASE: The table name is changed to CASES.
	case_id is the primary key and is incremented automatically.
	currently there is no resolution since all covid positive employees are still recovering.

8. HEALTH_STATUS: status_row_id is the primary key and is incremented automatically.
	status report is done on daily basis for every employee who is tested positive.


QUERIES
Q2.sql :
1. created COVID19_SYMPTOMS table that maps each symptom_id (1 to 5) to specific health issue according to standard symptoms that arise in COVID19 infection.
2. The outermost query displays symptom_id , symptom name and the rest inner queries retrieve details 
about the most common symptoms.

Q3.sql :
1. The idea behind sickest floor is to find the floor number where most numbers of employees (who are tested positive) have their offices or work rooms.

Q5.sql : 
QUERY- Retrieve employee TEST REPORTS of all TESTs that are conducted in the company location by making use of IN operator
  The query divides the TEST table based on location and filters out all location that are not equal to 'company'.