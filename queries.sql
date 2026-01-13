-- 1. Total calls per agent
SELECT AgentID, COUNT(*) AS TotalCalls
FROM customer_service_data
GROUP BY AgentID;

-- 2. Average Call Duration per Agent
SELECT AgentID, AVG(CallDurationMinutes) AS AvgCallDuration
FROM customer_service_data
GROUP BY AgentID;

-- 3. Calls per Issue Type
SELECT IssueType, COUNT(*) AS TotalCalls
FROM customer_service_data
GROUP BY IssueType;

-- 4. CSAT Average per Agent
SELECT AgentID, AVG(CSATScore) AS AvgCSAT
FROM customer_service_data
GROUP BY AgentID;

-- 5. Escalated Calls
SELECT *
FROM customer_service_data
WHERE ResolutionStatus='Escalated';

-- 6. Calls Longer Than 15 Minutes
SELECT *
FROM customer_service_data
WHERE CallDurationMinutes > 15;

-- 7. Repeat Customers (Multiple Calls)
SELECT CustomerID, COUNT(*) AS NumCalls
FROM customer_service_data
GROUP BY CustomerID
HAVING COUNT(*) > 1;
