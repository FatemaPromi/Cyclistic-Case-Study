# Google Data Analytics Capstone: Cyclistic Case Study
Course: [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone)
## Introduction
This case study simulates the real-world tasks of a junior data analyst at Cyclistic, a fictional bike-share company. I followed the data analysis process: Ask, Prepare, Process, Analyze, Share, and Act to answer key business questions and present actionable insights.
## Scenario
As part of the Cyclistic marketing analytics team, I was tasked with understanding how casual riders and annual members use Cyclistic bikes differently. This analysis helped inform a marketing strategy to convert casual riders into annual members. I used SQL for data analysis and Tableau for data visualization for this project.
## Ask
### Business Task
My task was to analyze differences in bike usage between casual riders and annual members. Based on my findings, I was also responsible for suggesting strategies for converting casual riders into annual members.
## Prepare
### Data Source
The data for this analysis is sourced from Cyclistic’s historical trip data from January 2022 to December 2022, available on [Divvy Trip Data](https://divvy-tripdata.s3.amazonaws.com/index.html). The data provided by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement) consists of 12 CSV files. Each file contains the following columns: ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual. All personally identifiable information has been removed to protect user privacy.
## Process
### Data Processing
Given the large size of the dataset (over 5.6 million rows), I used Google BigQuery and Google Cloud Console for data processing and storage. BigQuery’s ability to handle large datasets made it the ideal choice for merging, cleaning, and analyzing the data.
#### Combining Data
I created a bucket on Google Cloud Sotrage and uploaded the data. Then I opened BigQuery and created a dataset to store all the tables. I used the "Create Table" option to import each CSV file from Cloud Storage into BigQuery. After all the 12 csv files were imported as tables in BigQuery, I used the UNION ALL SQL operator to merge them into a new table and named it combined_table. 
#### Data Cleaning and Validation
* Checking Data Types and Renaming Columns: I verified that each column had the correct data type and converted date-related columns (started_at, ended_at) to datetime where necessary. Then, I renamed the columns for better understanding (member_casual to user_type, etc.)
* Handling Missing Values: I removed the null values in critical fields.
* Duplicate Checks: I checked for duplicate ride_id values and confirmed none were present.
* Ride Length Calculation: I created a new column, duration by subtracting the started_at time from ended_at. Rows with negative ride lengths or durations over 24 hours were filtered out.
* Additional Features: I extracted and added columns for start and end time, date, day and month separately to facilitate analysis of hourly, weekly and monthly trends.
## Analyze
### Exploratory Data Analysis
Using SQL queries, I performed a detailed analysis of the dataset, focusing on the following:
* Ride Duration: I calculated the average, minimum, and maximum ride durations for both casual riders and annual members.
* Day of the Week and Time of Day: I examined ride patterns for both rider types to determine peak days and hours of usage.
* Monthly Trends: I analyzed ride volumes across each month of the year to identify seasonal variations.
* Bike Type Preferences: I compared the distribution of bike types (electric, classic, and docked) between casual riders and members.
### Key Insights
1. Casual Riders vs. Annual Members:
  * Casual riders tend to take longer rides on average than annual members.
  * Casual riders are most active during weekends, while members use bikes more during weekdays, likely for commuting purposes.
2. Seasonal Trends:
  * The highest number of rides takes place in summer, with July being the peak month for casual riders and August for annual members.
3. Bike Type Preference:
  * Electric bikes are the most popular type of bike for both rider categories, but casual riders show a stronger preference for docked bikes.
## Share
### Data Visualization
Using Tableau Public, I created a series of visualizations to present the key findings. The [dashboard](https://public.tableau.com/views/Cyclistic_17282524909430/Dashboard1?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link) includes:
  * Ride Duration Comparison: A bar chart showing the average ride length for casual riders and members.
  * Day of Week Analysis: A bar graph comparing ride counts by day of the week for casual riders and members.
  * Seasonal Ride Trends: A pie chart showing ride volumes by seasons for both groups.
  * Bike Type Distribution: A stacked bar chart illustrating the popularity of different bike types among casual riders and members.
  * Peak Time Analysis: A line chart showing the peak times of day for both casual riders and members.
## Act
### Conclusion
The analysis revealed clear distinctions in how casual riders and annual members use Cyclistic’s bikes. Casual riders tend to take longer rides and prefer weekends, while members use bikes more consistently during weekdays, likely for commuting. Both groups preferred electric bikes, with higher ridership during the summer months.
### Recommendations
To convert casual riders into annual members, I recommended the following strategies:
  1. Weekend Promotions: Offer special deals or discounts on weekends, targeting casual riders who are more active during that time.
  2. Seasonal Membership Discounts: Launch targeted membership promotions during the summer when casual riders are most likely to convert.
  3. Electric Bike Benefits: Promote the advantages of becoming a member, particularly highlighting access to electric bikes, which are popular among both casual and member riders.
  4. Trial Memberships: Provide casual riders with short-term, discounted memberships to encourage long-term commitment.
Cyclistic can increase its annual membership base and foster long-term engagement by implementing these recommendations.
### Tools Used
* Google BigQuery and Google Cloud Storage for data processing and storage.
* Tableau Public for data visualizations.
### Languages
* SQL
* Tableau





