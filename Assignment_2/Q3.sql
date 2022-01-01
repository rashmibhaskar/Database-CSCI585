/*DB software used - MySQL*/

SELECT floor_no,COUNT(floor_no) as floor_count
FROM (SELECT DISTINCT E.*
	  FROM EMPLOYEE E, TEST T
	  WHERE E.e_id=T.e_id AND T.test_result='positive') Sick_Employee
GROUP BY floor_no
HAVING floor_count=(SELECT COUNT(floor_no)
			   FROM (SELECT DISTINCT E.*
					 FROM EMPLOYEE E, TEST T
					 WHERE E.e_id=T.e_id AND T.test_result='positive') Sick_Employee
			   GROUP BY floor_no
			   ORDER BY COUNT(floor_no) DESC
			   LIMIT 1);
