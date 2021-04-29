ETL Project -Wines overview

Team Members:

Georgina Guzman Rasillo
Berenice Nares
Celina Barrera
Jesús Daniel Sánchez Rómo

For this study, we used two Kaggle’s datasets to analyze different types of wine, wine regions, wineries, vineyards, wine varieties and their correspondent reviews around the world.

The information we extracted from those datasets were:
 
•	Country
•	Province 
•	Region
•	Winery
•	Vineyard
•	Variety
•	Title
•	Points 
•	Price
•	Review
 
Files used: 
winemag-data150.csv
winemag-data130.csv


--- Data Transformation ---

In order to perform the desired analysis, we cleaned the data and transformed it as following: 

1.	Used Pandas to load csv files and store them as Data Frames
2.	Created filtered Data Frames, removing columns such as region_2, taste_name, taster_twitter_handle that were not relevant for our analysis and rename columns for a better understanding
3.	Merged both datasets, removing duplicated and blank values for region, price and vineyard columns.
4.	Created catalogues with the correspondent id for country, province, region, winery, variety and vineyard. 

--- Data Load ---

Finally, we transferred our cleaned and transformed dataset into a database. Creating a database with its respective normalized tables to match the catalogues from Pandas’ Data Frames using PostgresSQL and PgAdmin. Reconnected to database and created three-degree normalized tables to have more efficient data analysis. 
