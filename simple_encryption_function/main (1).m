% Author Name: John Schweitzer
% Email: schwei87@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Assignment 2
% Task: Simple Encryption Function
% Date: 10/11/24

% a) Create a function named `caesar_cipher` that takes two inputs:
   % A string of lowercase letters (the message to encrypt)
   % An integer shift value between 1 and 25
   % The function should return the encrypted message using the Caesar cipher method.

% b) In the main script:
   % Prompt the user to enter a message and a shift value.
   message = input('Enter the message to encrypt (lowercase letters only): ','s')
   shift = input('Enter the shift value (between 1 and 25): ');
   % Call the `caesar_cipher` function with these inputs.
   encrypted_message = caesar_cipher(message, shift);
   % Print the original message and the encrypted message.
   fprintf('Original message: %s\n', message);
   fprintf('Encrypted message: %s\n', encrypted_message);



