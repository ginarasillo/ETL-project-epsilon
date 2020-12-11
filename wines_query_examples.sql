                        --SQL FILE OF EXAMPLE QUERIES ---WINES--

--Testing if all the tables were correctly created

SELECT * FROM country
SELECT * FROM province
SELECT * FROM region
SELECT * FROM winery
SELECT * FROM variety
SELECT * FROM vineyard
SELECT * FROM clean_wine_db_df



--Obtain all information from 7th Table: NORMALIZED DATA

SELECT co.country, re.region, pr.province, wi.winery, va.variety, vi.vineyard, df.title , df.points , df.price , df.review
FROM clean_wine_db_df AS df
LEFT JOIN country AS co
ON co.index=df.country_id
LEFT JOIN region AS re
ON re.index=df.region_id
LEFT JOIN province AS pr
ON pr.index=df.province_id
LEFT JOIN winery AS wi
ON wi.index=df.winery_id
LEFT JOIN variety AS va
ON va.index=df.variety_id
LEFT JOIN vineyard AS vi
ON vi.index=df.vineyard_id;
