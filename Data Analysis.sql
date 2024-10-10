-- Summary statistics by MembershipType
SELECT
 MembershipType,
 COUNT(*) AS total_trips, -- total number of trips taken by casual vs members
 AVG(Duration) AS average_duration, -- avg duration of trips taken by casual vs members
 SUM(Duration) AS total_duration,
 MIN(Duration) AS minimum_duration,
 MAX(Duration) AS maximum_duration
FROM
 `case-study-1-435815.bike_trips.combined_year`
GROUP BY
 MmebershipType
ORDER BY
 MmebershipType;


-- Trip Duration Analysis
-- What is the average trip duration for members vs. casual riders?

SELECT 
  MembershipType,
  AVG(Duration) AS avg_duration
FROM
  `case-study-1-435815.bike_trips.combined_year`
GROUP BY
  MembershipType;


-- Bike Type Preference
-- What types of bikes do members and casual riders prefer?
SELECT
  MembershipType,
  BikeType,
  COUNT(*) AS bike_count
FROM
  `case-study-1-435815.bike_trips.combined_year`
GROUP BY
  MembershipType,
  BikeType
ORDER BY
  BikeType DESC;


-- Peak Usage Time (Hour of Day)
-- What time of day do members and casual riders take trips?
SELECT
  MembershipType, 
  EXTRACT(HOUR FROM StartTimeStamp) AS hour_of_day, 
  COUNT(*) AS ride_count
FROM
  `case-study-1-435815.bike_trips.combined_year`
GROUP BY 
  MembershipType, 
  hour_of_day 
ORDER BY 
  hour_of_day, 
  MembershipType;


-- Day of Week Usage
-- On which days do members and casual riders ride most often?
SELECT
  MembershipType,
  StartDay AS day_of_week,
  COUNT(*) AS ride_counts
FROM
  `case-study-1-435815.bike_trips.combined_year`
GROUP BY
  MembershipType,
  StartDay
ORDER BY
  MembershipType,
  StartDay;


-- Seasonal Usage
-- How does usage vary across seasons?
SELECT 
  MembershipType, 
  CASE 
    WHEN StartMonth IN ('December', 'January', 'February') THEN 'Winter' 
    WHEN StartMonth IN ('March', 'April', 'May') THEN 'Spring' 
    WHEN StartMonth IN ('June', 'July', 'August') THEN 'Summer' 
    WHEN StartMonth IN ('September', 'October', 'November') THEN 'Fall' 
  END AS season, 
  COUNT(*) AS ride_count 
FROM
  `case-study-1-435815.bike_trips.combined_year`
GROUP BY 
  MembershipType, 
  season
ORDER BY 
  season, 
  MembershipType;
