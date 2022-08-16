SELECT * FROM county_data;
SELECT * FROM pop_data;

DROP VIEW IF EXISTS data_by_year;
CREATE VIEW data_by_year AS
SELECT year, state, county, property_type, AVG(inventory) AS "avg_inventory", SUM(homes_sold) AS "total_homes_sold", AVG(median_sale_price) AS "avg_median_sale_price", AVG(median_ppsf) AS "avg_median_ppsf" 
FROM county_data
GROUP BY year, state, county, property_type;



-- SELECT property_type, COUNT(property_type)
-- FROM county_data
-- GROUP BY property_type
-- ORDER BY COUNT(property_type);

-- SELECT region, state, AVG(median_sale_price) As "Average Median Sale Price"
-- FROM county_data
-- GROUP BY region, state
-- ORDER BY AVG(median_sale_price) DESC;

-- SELECT region, AVG(median_ppsf) As "Average Median Price Per Square Foot"
-- FROM county_data
-- GROUP BY region 
-- ORDER BY AVG(median_ppsf) DESC;