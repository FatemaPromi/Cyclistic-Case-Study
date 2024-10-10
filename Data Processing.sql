-- data cleaning
--Checking for duplicates

SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM `case-study-1-435815.bike_trips.combined_table`;

--checking for nulls

SELECT COUNTIF(ride_id IS NULL) AS null_count
FROM case-study-1-435815.bike_trips.combined_table`


--checking the string length to see if the ride_id value is 16 characters.

SELECT LENGTH(ride_id) AS length_ride_id, COUNT(ride_id) AS no_of_rows
FROM `case-study-1-435815.bike_trips.combined_table`
GROUP BY length_ride_id;


-- adding, removing/dropping, renaming columns

ALTER TABLE `case-study-1-435815.bike_trips.combined_table`
RENAME COLUMN member_casual TO MembershipType,
              started_at TO StartTimestamp,
              ended_at TO ReturnTimestamp,
              rideable_type TO BikeType;


-- separating data into months, day, date and time

UPDATE `case-study-1-435815.bike_trips.combined_table`
SET
 ReturnMonth = CAST(EXTRACT(DAY FROM ReturnTimestamp) AS STRING)
WHERE TRUE;


--changing the format of month and date from number to words

UPDATE `case-study-1-435815.bike_trips.combined_table`
SET
 ReturnMonth = FORMAT_TIMESTAMP('%B', ReturnTimestamp)
WHERE TRUE;


-- calculating the trip duration/ride length, subtracting return time from start time in minutes

UPDATE `case-study-1-435815.bike_trips.combined_table`
SET
 Duration = TIMESTAMP_DIFF(TIMESTAMP(ReturnTimestamp),TIMESTAMP(StartTimestamp), MINUTE)
WHERE
 ReturnTimestamp IS NOT NULL AND StartTimestamp IS NOT NULL;




