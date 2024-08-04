-- Find Longest Flights:
SELECT carrier, flight, distance 
FROM flights 
ORDER BY distance DESC 
LIMIT 10;

-- Calculate Average Air Time by Airline
SELECT carrier, AVG(air_time) AS AvgAirTime
FROM flights
GROUP BY carrier 
ORDER BY AvgAirTime DESC;

-- Calculate Average Delay Time
SELECT AVG(dep_delay) AS AvgDelay 
FROM flights;

-- Calculate On-Time Percentage by Airline
SELECT carrier, 
       1 - (SUM(CASE WHEN dep_delay > 0 THEN 1 ELSE 0 END) / COUNT(*)) AS OntimePercentage
 FROM flights 
 GROUP BY carrier
 ORDER BY OnTimePercentage DESC;
 
-- Analyze delays by day of the week
SELECT day,AVG(dep_delay) AS AvgDelay 
FROM flights
GROUP BY day 
ORDER BY day;

-- Calculate Average Delay Time and Scheduled Departure Time
SELECT AVG(dep_delay) AS AvgDelay, AVG(sched_dep_time) AS AvgSchedTime
FROM flights;

-- Identify Busiest Hours of the Day
SELECT hour, COUNT(*) AS FlightCount
FROM flights 
GROUP BY hour
ORDER BY FlightCount DESC;

-- Analyze Delay by Origin Airport
SELECT origin, AVG(dep_delay) AS AvgDelay
FROM flights 
GROUP BY origin
ORDER BY AvgDelay DESC;