
  --- Dataset: Unemployment in America, Per US State Tracks unemployment per US state since 1976 from the Bureau of Labor Statistics.

-- Viewing dataset

SELECT*
FROM Portfolio..[Unemployment in America]

-- Total unemployment amount in America.

SELECT SUM([Total Unemployment in State/Area]) as TotalUnemployment
FROM Portfolio..[Unemployment in America]

-- Total unemployment amount in America in 2000

SELECT SUM([Total Unemployment in State/Area]) as TotalUnemployementRatIn2000
FROM Portfolio..[Unemployment in America]
WHERE Year=2000;

-- Average percent employed in Amercia grouped by state.

SELECT AVG([Percent (%) of Labor Force Employed in State/Area]) AS AveragePercentOfLaborForceEmployed
FROM Portfolio..[Unemployment in America]
GROUP BY [State/Area]

-- Using CASE to Return a value showing when population is over 50 then more then half the population was infected.

SELECT [Percent (%) of State/Area's Population],
CASE
	WHEN [Percent (%) of State/Area's Population] > 50 THEN 'More then half then population was infected'
	ELSE 'under half of the population was infected'
END AS 'popinfo'
FROM Portfolio..[Unemployment in America]









