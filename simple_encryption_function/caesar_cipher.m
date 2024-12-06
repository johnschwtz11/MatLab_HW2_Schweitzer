function encrypted_message = caesar_cipher(message, shift) % Caesar Cipher function
    ascii_values = double(message); % converts message to ascii
    encrypted_message = char(zeros(1, length(message))); % initialize empty array for encrypted message
    for i = 1:length(message) % loop through each character in message
        shifted_value = ascii_values(i) + shift; % shift ascii value by specified amount
        if shifted_value > 122 % check if shifted value goes beyond z 
            shifted_value = shifted_value - 26; % wrap around to a
        end
        encrypted_message(i) = char(shifted_value); % store encrypted message
    end
end


