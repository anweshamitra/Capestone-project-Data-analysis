select * from [population-2030-2040-1 (1)]

--LOCATION--

select Location,round(PopMale,3) as Male_population,round(PopFemale,3) as Female_population,round((PopMale+PopFemale),3) as Total_population from [population-2030-2040-1 (1)]

--highest population at each location 
SELECT distinct(Location), Time, ROUND(MAX(PopTotal), 3) AS Maximum_Population
FROM [population-2030-2040-1 (1)]
GROUP BY Location, Time
ORDER BY Maximum_Population DESC;

--average male and female population at each loaction
SELECT distinct(Location), Time,
       ROUND(AVG(PopMale), 3) AS AvgMalePopulation, 
       ROUND(AVG(PopFemale), 3) AS AvgFemalePopulation
FROM [population-2030-2040-1 (1)]
GROUP BY Location,Time
ORDER BY Location;

--highest male and female population at each location--
SELECT distinct(Location), time,
       ROUND(MAX(PopMale), 3) AS HighestMalePopulation, 
       ROUND(MAX(PopFemale), 3) AS HighestFemalePopulation
FROM [population-2030-2040-1 (1)]
GROUP BY Location, time
ORDER BY Location;

--highest male population at each location 
SELECT distinct(Location),time, ROUND(MAX(PopMale), 3) AS Maximum_Male_Population
FROM [population-2030-2040-1 (1)]
GROUP BY Location,time
ORDER BY Maximum_Male_Population DESC;

--highest female population at each location 
SELECT distinct(Location),time ,ROUND(MAX(PopFemale), 3) AS Maximum_Female_Population
FROM [population-2030-2040-1 (1)]
GROUP BY Location,time
ORDER BY Maximum_Female_Population DESC;

--TIME--

--Total Population by Location for 2020:
SELECT Location, ROUND(SUM(PopTotal), 3) AS TotalPopulation
FROM [population-2030-2040-1 (1)]
WHERE Time = 2020
GROUP BY Location
ORDER BY TotalPopulation DESC;


--highest population in each year
SELECT distinct(Time), ROUND(MAX(PopTotal), 3) AS Maximum_Population
FROM [population-2030-2040-1 (1)]
GROUP BY Time
ORDER BY Maximum_Population DESC;


--average male and female population for each year
SELECT distinct(Time), 
       ROUND(AVG(PopMale), 3) AS AvgMalePopulation, 
       ROUND(AVG(PopFemale), 3) AS AvgFemalePopulation
FROM [population-2030-2040-1 (1)]
GROUP BY Time
ORDER BY Time;



--AGE GROUP--

--highest population of each age group 
SELECT distinct(AgeGrp),Time, ROUND(MAX(PopTotal), 3) AS Maximum_Population
FROM [population-2030-2040-1 (1)]
GROUP BY AgeGrp,Time
ORDER BY Maximum_Population DESC;

--highest male population of each age group 
SELECT distinct(AgeGrp),Time, ROUND(MAX(PopMale), 3) AS Maximum_Male_Population
FROM [population-2030-2040-1 (1)]
GROUP BY AgeGrp,Time
ORDER BY Maximum_Male_Population DESC;

--highest female population of each age group 
SELECT distinct(AgeGrp),Time, ROUND(MAX(PopFemale), 3) AS Maximum_Female_Population
FROM [population-2030-2040-1 (1)]
GROUP BY AgeGrp,Time
ORDER BY Maximum_Female_Population DESC;


--avg male population of each age group 
SELECT distinct(AgeGrp),Time, ROUND(AVG(PopMale), 3) AS Average_Male_Population
FROM [population-2030-2040-1 (1)]
GROUP BY AgeGrp,Time
ORDER BY Average_Male_Population DESC;

--average female population of each age group 
SELECT distinct(AgeGrp),Time, ROUND(AVG(PopFemale), 3) AS Average_Female_Population
FROM [population-2030-2040-1 (1)]
GROUP BY AgeGrp,Time
ORDER BY Average_Female_Population DESC;



