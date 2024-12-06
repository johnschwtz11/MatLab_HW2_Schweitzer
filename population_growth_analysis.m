% Author Name: John Schweitzer
% Email: schwei87@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Population Growth Analysis
% Date: 10/11/24

% 1) A small town has recorded its population over the last 5 years. The data for each year is: [5000, 5200, 5350, 5600, 5800].

% a) Create a row vector `population` with this data.
population = [5000 5200 5350 5600 5800]; % population row vector

% b) Calculate the year-over-year growth rate and store it in a new vector `growth_rate`.
growth_rate = (population(2:end) - population(1:end-1)) ./ population(1:end-1)

% c) Create a 2x5 matrix `pop_data` where the first row is the `population` vector and the second row is the `growth_rate` vector.
pop_data = [population; [0 growth_rate]]

% d) Use `fprintf` to print a formatted table showing each year's population and growth rate.
for i=1:length(population)
    fprintf("%d | %d | %f \n", i, pop_data(1, i), pop_data(2, i))
end
