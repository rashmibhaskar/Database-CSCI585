/*DB software used - MySQL*/
CREATE TABLE COVID19_SYMPTOMS
(symptom_id INTEGER auto_increment,
general_symptoms VARCHAR(50) NOT NULL,
PRIMARY KEY (symptom_id)
);

INSERT INTO COVID19_SYMPTOMS VALUES (1,'Fever');
INSERT INTO COVID19_SYMPTOMS VALUES (2,'Cough and Cold');
INSERT INTO COVID19_SYMPTOMS VALUES (3,'Loss of Taste and Smell');
INSERT INTO COVID19_SYMPTOMS VALUES (4,'Shortness of breath');
INSERT INTO COVID19_SYMPTOMS VALUES (5,'Headache');

SELECT * FROM COVID19_SYMPTOMS;

SELECT symptom_id, general_symptoms
FROM COVID19_SYMPTOMS
WHERE symptom_id IN (SELECT symptom_id
					FROM SYMPTOM 
					GROUP BY symptom_id
					HAVING COUNT(symptom_id)=(SELECT COUNT(symptom_id)
											FROM SYMPTOM 
											GROUP BY symptom_id
											ORDER BY COUNT(symptom_id) DESC
											LIMIT 1));