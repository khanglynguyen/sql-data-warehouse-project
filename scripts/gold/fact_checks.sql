-- Foreign Key Integrity (Dimensions)
SELECT * FROM gold.fact_sales fs
LEFT JOIN gold.dim_customers dc
ON fs.customer_key = dc.customer_key
LEFT JOIN gold.dim_products dp
ON fs.product_key = dp.product_key
WHERE dp.product_key IS NULL -- Check if all dimension tables can succesfully join to the fact table
