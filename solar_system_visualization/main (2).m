% Author Name: John Schweitzer
% Email: schwei87@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Solar System Visualization
% Date: 10/11/24

% Create a visualization of the solar system's planets:

% a) Create two vectors:
   % `planet_distances`: containing the average distance of each planet from the sun in astronomical units (AU).
   planet_distances = [0.39 0.72 1.00 1.52 5.20 9.54 19.22 30.07];
   % `planet_sizes`: containing the relative sizes of the planets (use Earth = 1 as a reference).
   planet_sizes = [0.38, 0.95, 1.00, 0.53, 11.21, 9.45, 4.01, 3.88];
% Planet names
planet_names = {'Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune'};
% b) Create a figure with two subplots:
   % In the first subplot, create a scatter plot of planet distances vs. planet sizes. Use different colors for each planet and adjust the marker sizes to reflect the planet sizes.
   figure('Position', [100, 100, 800, 600]);
   subplot(2, 1, 1);
   scatter(planet_distances, planet_sizes, planet_sizes * 100, 'filled', 'MarkerEdgeColor', 'w');
   hold on;
   for i = 1:length(planet_names)
    text(planet_distances(i), planet_sizes(i), planet_names{i}, 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'center');
   end
   % c) Add appropriate titles, labels, and a legend to both subplots.
   title('Planet Distances vs. Planet Sizes');
   xlabel('Distance from Sun (AU)');
   ylabel('Relative Size (Earth = 1)');
   xlim([0, 35]);
   ylim([0, 20]);
   grid on;
   
   % In the second subplot, create a bar chart of planet distances.
   subplot(2, 1, 2);
   bar(planet_distances, 'FaceColor', 'blue');
   set(gca, 'XTickLabel', planet_names);
   % c) Add appropriate titles, labels, and a legend to both subplots.
   title('Average Distances of Planets from the Sun');
   xlabel('Planets');
   ylabel('Distance (AU)');
   grid on;
% d) Save the figure as an image file named 'solar_system_visualization.png'.
saveas(gcf, 'solar_system_visualization.png');
