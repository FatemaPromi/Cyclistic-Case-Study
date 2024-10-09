-- Combining all 12 months of data in one table.

CREATE TABLE `case-study-1-435815.bike_trips.combined_year` AS (
  SELECT * FROM `bike_trips.202201_tripdata`
  UNION ALL
  SELECT * FROM `bike_trips.202202_tripdata`
  UNION ALL
  SELECT * FROM `bike_trips.202203_tripdata`
  UNION ALL
  SELECT * FROM `bike_trips.202204_tripdata`
  UNION ALL
  SELECT * FROM `bike_trips.202205_tripdata`
  UNION ALL
  SELECT * FROM `bike_trips.202206_tripdata`
  UNION ALL
  SELECT * FROM `bike_trips.202207_tripdata`
  UNION ALL
  SELECT * FROM `bike_trips.202208_tripdata`
  UNION ALL
  SELECT * FROM `bike_trips.202209_tripdata`
  UNION ALL
  SELECT * FROM `bike_trips.202210_tripdata`
  UNION ALL
  SELECT * FROM `bike_trips.202211_tripdata`
  UNION ALL
  SELECT * FROM `bike_trips.202212_tripdata`
);

-- Checked the number of rows in our new table, which was 5667717.

SELECT COUNT(*)
FROM `case-study-1-435815.bike_trips.combined_year`;
