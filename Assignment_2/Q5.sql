/*DB software used - MySQL*/

/*QUERY- Retrieve employee TEST REPORTS of all TESTs conducted in company 
  The following query divides the TEST table based on location and filters all location that are not equal to 'company' */

SELECT test_id,test_date,test_time,e_id,test_result 
FROM TEST 
WHERE test_id IN ( SELECT test_id 
				   FROM TEST 
                   WHERE location='company');
                   