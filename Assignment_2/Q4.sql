/*DB software used - MySQL*/

/*STATS for number of scans between '2021-10-13' AND '2021-10-16'*/
SELECT COUNT(*) AS NUMBER_OF_SCANS
FROM SCAN
WHERE scan_date>='2021-10-13' AND scan_date<='2021-10-16';

/*STATS for number of tests between '2021-10-13' AND '2021-10-16'*/
SELECT COUNT(*) AS NUMBER_OF_TESTS
FROM TEST
WHERE test_date>='2021-10-13' AND test_date<='2021-10-16';

/*STATS for number of self reports between '2021-10-13' AND '2021-10-16'*/
SELECT COUNT(DISTINCT e_id) AS NUMBER_SELF_REPORTS
FROM SYMPTOM
WHERE date_reported>='2021-10-13' AND date_reported<='2021-10-16';

/*STATS for number of positive cases between '2021-10-13' AND '2021-10-16'*/
SELECT COUNT(*) AS NUMBER_OF_POSITIVE_CASES
FROM TEST
WHERE test_date>='2021-10-13' AND test_date<='2021-10-16' AND test_result='positive';
