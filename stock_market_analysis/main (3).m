% Author Name: John Schweitzer
% Email: schwei87@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Stock Market Analysis
% Date: 10/11/24

% a) Create a file named 'stock_data.txt' with daily closing prices for a fictitious stock over 30 days (one price per line).

% b) Write a MATLAB script that:
   % Reads the stock data from 'stock_data.txt'.
data = load('stock_data.txt');
 % Calculates and prints:
     % Average closing price
     avg_price = mean(data);
     fprintf('The average closing price of the stock is $%g \n', avg_price);
     % Highest closing price
     max_price = max(data);
     fprintf('The highest closing price of the stock is $%g \n', max_price);
     % Lowest closing price
     min_price = min(data);
     fprintf('The lowest closing price of the stock is $%g \n', min_price);
     % Number of days the stock price increased from the previous day
     price_changes = diff(data);
     days_increased = sum(price_changes > 0);
     fprintf('The number of days the stock price increased was %g days \n', days_increased);
   % Creates a line plot showing:
     % Daily closing prices
     figure;
     plot(data, 'b-o', 'DisplayName', 'Daily Closing Prices');
     hold on;
     % Average price as a horizontal line
     yline(avg_price, 'r--', 'Average Price', 'LabelHorizontalAlignment', 'left', 'DisplayName', 'Average Price');
     % Highest and lowest prices as horizontal lines
     yline(max_price, 'g--', 'Highest Price', 'LabelHorizontalAlignment', 'left', 'DisplayName', 'Highest Price');
     yline(min_price, 'm--', 'Lowest Price', 'LabelHorizontalAlignment', 'left', 'DisplayName', 'Lowest Price');
     hold off;
     % Adds appropriate labels, title, and legend to the plot.
     xlabel('Days');
     ylabel('Closing Price');
     title('Stock Daily Closing Prices of Goofy Goobers INC');
     legend('Location', 'best');
     grid on;
     % Saves the plot as an image file named 'stock_analysis.png'.
     saveas(gcf, 'stock_analysis.png');
     % Writes a summary of the analysis to a new file named 'stock_summary.txt'.
     summary_file = fopen('stock_summary.txt', 'w');
     fprintf(summary_file, 'Stock Price Analysis Summary:\n');
     fprintf(summary_file, 'The average closing price of the stock is $%g \n', avg_price);
     fprintf(summary_file, 'The highest closing price of the stock is $%g \n', max_price);
     fprintf(summary_file, 'The lowest closing price of the stock is $%g \n', min_price);
     fprintf(summary_file, 'The number of days the stock price increased was %g days \n', days_increased);
     fclose(summary_file);