--SQL file of the table schemata

--Create database
CREATE DATABASE wines
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

--1st Table: COUNTRY
CREATE TABLE "country" (
    "index" INT NOT NULL PRIMARY KEY,
    "country" VARCHAR   NOT NULL
);

--2nd Table: PROVINCE
CREATE TABLE "province" (
    "index" INT NOT NULL PRIMARY KEY,
    "province" VARCHAR   NOT NULL
);

--3rd Table: REGION
CREATE TABLE "region" (
    "index" INT NOT NULL PRIMARY KEY,
    "region" VARCHAR   NOT NULL
);

--4th Table: WINERY
CREATE TABLE "winery" (
    "index" INT NOT NULL PRIMARY KEY,
    "winery" VARCHAR   NOT NULL
);

--5th Table: VARIETY
CREATE TABLE "variety" (
    "index" INT NOT NULL PRIMARY KEY,
    "variety" VARCHAR   NOT NULL
);

--6th Table: VINEYARD
CREATE TABLE "vineyard" (
    "index" INT NOT NULL PRIMARY KEY,
    "vineyard" VARCHAR   NOT NULL
);

--7th Table: NORMALIZED DATA
CREATE TABLE "clean_wine_db_df" (
    "index" INT NOT NULL PRIMARY KEY,
    "country_id" INT   NOT NULL,
	"region_id" INT   NOT NULL,
	"province_id" INT   NOT NULL,
	"winery_id" INT   NOT NULL,
	"variety_id" INT   NOT NULL,
	"vineyard_id" INT   NOT NULL,
	"title" VARCHAR,
	"points" INT,
	"price" INT,
	"review" VARCHAR,
	FOREIGN KEY (country_id) REFERENCES country(index),
	FOREIGN KEY (region_id) REFERENCES region(index),
	FOREIGN KEY (province_id) REFERENCES province(index),
	FOREIGN KEY (winery_id) REFERENCES winery(index),
	FOREIGN KEY (variety_id) REFERENCES variety(index),
	FOREIGN KEY (vineyard_id) REFERENCES vineyard(index)
);