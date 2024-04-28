### Caesar Cipher Decoder

This MATLAB application decodes text encrypted using the Caesar cipher. The Caesar cipher is a substitution cipher in which each letter of the plaintext is shifted a fixed number of positions up or down the alphabet.

#### How to Use

1. **Input**: Provide the encrypted text (`zaszyforwanyTekst`) and the encryption key (`key`) in the respective variables.
2. **Execution**: Run the script to decrypt the text.
3. **Output**: The decrypted text (`rozszyforwanyTekst`) will be displayed in the MATLAB command window.

#### Description

- **Encrypted Text**: The encrypted text to decrypt is stored in the variable `zaszyforwanyTekst`.
- **Encryption Key**: The encryption key determines the number of positions each letter in the plaintext is shifted. It is stored in the variable `key`.
- **Decryption Process**: The decryption process involves iterating through each character in the encrypted text, calculating the corresponding decoded character based on the encryption key, and preserving the original letter case. Additionally, spaces are added after each word.
- **Output**: The decrypted text is stored in the variable `rozszyforwanyTekst` and displayed in the MATLAB command window.

#### Usage Notes

- Make sure to replace the variables `zaszyforwanyTekst` and `key` with your own encrypted text and encryption key.
- The decrypted text will be displayed in the MATLAB command window. You can modify the script to save the decrypted text to a file if needed.

#### Example

```matlab
% Provide the encrypted text and encryption key
zaszyforwanyTekst = 'Your encrypted text here';
key = 'encryption_key';

% Run the decryption process
% (Insert decryption code here)

% Display the decrypted text
disp(rozszyforwanyTekst);
