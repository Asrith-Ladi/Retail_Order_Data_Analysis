# Data Analysis Project: {Order_Data_Analysis}

## Overview
This repository contains the code and documentation for a data analysis project focusing on [brief description of the project]. The project involves performing Extract, Transform, and Load (ETL) operations on data using Python, specifically leveraging libraries such as pandas and sqlalchemy. Once the data cleaning process is completed, it is loaded into a database for further analysis.

## FLOW



## Project Structure
- **Order_Data_Analysis.ipynb**: Jupyter Notebook containing the Python code for ETL operations.
- **Order_Data_Analysis.sql**: SQL queries used for data analysis.
- **Data/**: Directory containing the raw and processed data files.

## ETL Operations
The ETL process involves the following steps:
1. Extraction: Data is extracted from [https://www.kaggle.com/datasets/ankitbansal06/retail-orders].
2. Transformation: Data is cleaned and transformed using pandas.
3. Loading: Cleaned data is loaded into the database using sqlalchemy.

## Analysis Queries

The following SQL queries were executed against the loaded data:

1. Top 10 Highest Revenue Generating Products: Query to identify the top revenue-generating products.
2. Top 5 Highest Selling Products in Each Region: Query to find the top-selling products in each region.
3. Month-over-Month Growth Comparison: Comparison of sales between 2022 and 2023 on a month-over-month basis.
4. Highest Sales Month for Each Category: Analysis to determine the month with the highest sales for each product category.
5. Subcategory with Highest Profit Growth: Identification of the subcategory with the highest profit growth percentage in 2023 compared to 2022.

## Usage
To replicate the analysis:
1. Execute the ETL process using the provided Jupyter Notebook (`Order_Data_Analysis.ipynb`).
2. Load the cleaned data into your preferred database.
3. Run the SQL queries (`Order_Data_Analysis.sql`) against the loaded data to perform the analysis.

## Dependencies
- Python 3.x
- pandas
- sqlalchemy
- MSSQL DB
- SSMS


## Contributors
(https://www.kaggle.com/datasets/ankitbansal06/retail-orders)
