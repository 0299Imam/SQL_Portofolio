/*1. Data Aggregation and Filtering*/

/* A. Query: Analyze the distribution of thyroid function types and their corresponding risk levels.*/

SELECT "Thyroid Function", Risk, COUNT(*) AS Number_of_Patients
FROM Thyroid_Diff 
GROUP BY "Thyroid Function", Risk
ORDER BY Number_of_Patients DESC;

/*B. Query: Filter the data to find patients with 'Clinical Hyperthyroidism'*/

SELECT *
FROM Thyroid_Diff 
WHERE "Thyroid Function" = 'Clinical Hyperthyroidism';

/*2. Risk Factor Analysis

 A. Query: Determine how smoking history impacts the risk level.*/

SELECT Smoking, Risk, COUNT(*) AS Number_of_Patients
FROM Thyroid_Diff 
GROUP BY Smoking, Risk
ORDER BY Number_of_Patients DESC;

/*B. Query: Analyze the recurrence rates based on smoking history.*/

SELECT Smoking, COUNT(*) AS Number_of_Patients, SUM(CASE WHEN Recurred = 'Yes' THEN 1 ELSE 0 END) AS Recurred
FROM Thyroid_Diff 
GROUP BY Smoking;

/*3. Predictive Modeling

A. Query: Identify factors that predict the likelihood of recurrence.*/

SELECT Age, Gender, Smoking, "Thyroid Function", Risk, Response
FROM Thyroid_Diff 
WHERE Recurred = 'Yes';

/*B. Query: Predict treatment response based on initial clinical data.*/

SELECT Age, Gender, Smoking, "Thyroid Function", Risk, Pathology, Focality, Response
FROM Thyroid_Diff 
WHERE Risk = 'High';

/*4. Stage and Risk Analysis

A. Query: Assess the relationship between clinical stage and risk level.*/

SELECT Stage, Risk, COUNT(*) AS Number_of_Patients
FROM Thyroid_Diff 
GROUP BY Stage, Risk;

/*B. Query: Analyze how physical examination findings correlate with disease stage.*/

SELECT Physical_Examination, Stage, COUNT(*) AS Number_of_Patients
FROM Thyroid_Diff 
GROUP BY Physical_Examination, Stage;


/*5. Outcome Assessment

A. Query: Evaluate the effectiveness of different treatment responses.*/

SELECT Response, COUNT(*) AS Number_of_Patients
FROM Thyroid_Diff 
WHERE Recurred = 'No'
GROUP BY Response;

/*B. Query: Track patient outcomes based on clinical and pathological data.*/

SELECT Response, Pathology, COUNT(*) AS Number_of_Patients
FROM Thyroid_Diff 
GROUP BY Response, Pathology
ORDER BY Number_of_Patients DESC;





