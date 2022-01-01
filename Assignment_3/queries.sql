CREATE EXTENSION postgis;
CREATE EXTENSION postgis_topology;

--Create Table
CREATE TABLE LOCATIONS (name varchar, point geometry);

INSERT INTO LOCATIONS VALUES
	('Leavey','POINT(-118.283350 34.021571)'),
	('Home', 'POINT(-118.286593 34.032224)'),
	('Lyon Center', 'POINT(-118.287916 34.024406)'),
	('USC Bookstore', 'POINT(-118.286474 34.021172)'),
	('Tommy Trojan', 'POINT(-118.285385 34.020543)'),
	('Doheny', 'POINT(-118.284211 34.020489)'),
    ('URC', 'POINT(-118.285067 34.023248)'),
    ('Target', 'POINT(-118.284163 34.025635)'),
	('SGM', 'POINT(-118.289008 34.021642)'),
    ('SAL', 'POINT(-118.289474 34.019707)'),
    ('Fisher Museum', 'POINT(-118.287315 34.018468)'),
    ('OHE', 'POINT(-118.289698 34.020835)'),
    ('THH', 'POINT(-118.284569 34.022403)');

SELECT name, ST_AsText(point) FROM LOCATIONS;

--Convex Hull
SELECT ST_AsText(ST_ConvexHull(ST_Collect(point))) FROM LOCATIONS;

--Nearest Neighbors to Home
SELECT DISTINCT name, ST_Astext(point) as location, ST_Distance(point,'POINT(-118.286593 34.032224)') as distance
FROM LOCATIONS
WHERE name<>'Home'
ORDER BY ST_Distance(point,'POINT(-118.286593 34.032224)')
limit 4;