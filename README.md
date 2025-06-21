# Power-Energy-Dashboard
This Power BI project presents an interactive dashboard built to analyze global energy consumption patterns using data from various sources including renewables and non-renewables. The dashboard helps uncover insights into energy trends across countries and years, promoting better understanding of energy sustainability.

⚡ Power Energy Dashboard – Power BI Project
🚀 Project Overview
This Power BI project presents an interactive dashboard built to analyze global energy consumption patterns using data from various sources including renewables and non-renewables. The dashboard helps uncover insights into energy trends across countries and years, promoting better understanding of energy sustainability.

📘 Project Learnings
Designed an interactive Power BI dashboard to explore global electricity production trends from 1985 to 2023.

Created calculated fields and KPIs using DAX to analyze renewable vs non-renewable share, fossil fuel dependency, and energy growth trends.

Integrated slicers and filters for dynamic interaction based on year and country (entity) selection.

Utilized multiple visual formats to support cross-analysis between different energy sources and time periods.

Developed reusable SQL scripts to import and transform CSV data into a structured MySQL database for reporting.

------------------------------------------------------------------------------------------

📌 Key Features
Track total renewable vs non-renewable energy over time.
Identify top renewable energy contributors by country.
Analyze growth trends using line and clustered column charts.
Dynamic filtering by year and country through slicers.
Visualize energy source distributions using donut and pie charts.
Compare fossil fuels vs renewables across regions and time.

------------------------------------------------------------------------------------------

📊 Power BI Visuals Used
The following charts and visuals were used to create insightful metrics and dashboards:

Charts and Indices
Card KPIs: Total Energy Consumption, Total Renewables and Total Non-Renewables

Donut Chart: Percentage Distribution of Renewables (Solar, Wind, Hydro, Bioenergy, Others)

Pie Chart (Alternative visualization): Renewable vs Non-renewable Share

Line Chart: Renewables and Non-Renewables by Year, Solar and Wind Growth Over Time and Gas vs Coal Usage Trend

Bar Chart: Total Renewable Energy by Year and Total Non-Renewable Energy by Year

Clustered Column Chart: Total Fossil Fuel vs Total Non-Renewables by Country (Entity)

Line and Clustered Column Chart: Fossil Fuels vs Renewables by Country over Time

Slicers: Year Range Selector (Slider), Country/Entity Dropdown Selector

------------------------------------------------------------------------------------------

🧰 Tools & Technologies
Power BI Desktop
MySQL
DAX (Data Analysis Expressions)
CSV Dataset
Power Query

------------------------------------------------------------------------------------------

🗄️ SQL Import Script
sql
Copy
Edit
CREATE DATABASE PowerEnergy;
USE PowerEnergy;

CREATE TABLE energy_data (
    Entity VARCHAR(255),
    Code VARCHAR(10),
    Year INT,
    Other_renewables_TWh FLOAT,
    Bioenergy_TWh FLOAT,
    Solar_TWh FLOAT,
    Wind_TWh FLOAT,
    Hydro_TWh FLOAT,
    Nuclear_TWh FLOAT,
    Oil_TWh FLOAT,
    Gas_TWh FLOAT,
    Coal_TWh FLOAT
);

SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE 'C:/Users/shubh/Downloads/EnergyDatasets.csv'
INTO TABLE energy_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM energy_data;

------------------------------------------------------------------------------------------

📸 Dashboard Preview
![Screenshot 2025-06-21 142741](https://github.com/user-attachments/assets/052faa14-41ae-49d5-b9c7-17b41fc41e5d)\

