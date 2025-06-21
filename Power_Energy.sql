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
SELECT * FROM energy_data;

SET GLOBAL local_infile = 1;

LOAD DATA LOCAL INFILE 'C:/Users/shubh/Downloads/EnergyDatasets.csv' -- Loads excel file
INTO TABLE energy_data -- location to import data
FIELDS TERMINATED BY ',' -- Specifies that each column is separated by a comma (,) in the CSV file.
ENCLOSED BY '"' -- Handles cases where values are surrounded by double quotes (e.g., "1234"). This is very common in CSV files where values might contain commas or special characters.
LINES TERMINATED BY '\n' -- Tells MySQL that each row of data ends with a newline character. This helps MySQL separate rows in the file.
IGNORE 1 ROWS; -- Skips the first row of the CSV file, which usually contains column headers like id,name,amount. If your CSV has no header row, remove this line.