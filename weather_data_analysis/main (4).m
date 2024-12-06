% Author Name: John Schweitzer
% Email: schwei87@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Weather Data Analysis
% Date: 10/11/24

% a) Create a file named 'weather_data.txt' with the following structure:

% Date,Temperature,Humidity,Precipitation
% 2024-09-01,25.5,60,0
% 2024-09-02,26.0,65,5
% 2024-09-03,24.5,70,10
% 2024-09-04,23.0,75,15
% 2024-09-05,22.5,80,20

% b) Write a MATLAB script that:
   % Reads the data from 'weather_data.txt' into a cell array.
   % Extracts the numerical data into separate vectors for temperature, humidity, and precipitation.
   % Calculates the average temperature, humidity, and total precipitation.
   % Saves these statistics to a new file named 'weather_summary.txt'.

% Read data from file
data = readcell('weather_data.txt', 'Delimiter', ',');

% Extract numerical data (skipping header row)
temperature = cell2mat(data(2:end, 2));
humidity = cell2mat(data(2:end, 3));
precipitation = cell2mat(data(2:end, 4));

% Calculate statistics
avg_temp = mean(temperature);
avg_hum = mean(humidity);
avg_precip = mean(precipitation);
data = [avg_temp avg_hum avg_precip] % sets data into array

% Writing to a text file
fileID = fopen('weather_summary.txt', 'w');
fprintf(fileID, '%f %f %f\n', data');
fclose(fileID);
