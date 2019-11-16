
### Security

Cryptography vs. Cryptanalysis

Security Services
- Condidentiality ≈ privacy, secrecy => no forbiden access.
- Data Integrity ≈ identify any alteration in data.
- Authentication
  - Message Authentication : check whether a message has been changed or not, after origination
  - Entity Authentication : is assurance that the data has been recieved from a specific entity, say a particular web-site.
- Non-repudiation : it assures that an enitty can't refuse the ownership of a previous commitment of an action.

Cryptography Primitives
- Encryption
- Hash function
- Message Authentication Code (MAC)
- Digital Signature

[](!https://www.tutorialspoint.com/cryptography/images/primitive_service.jpg)

[](https://www.tutorialspoint.com/cryptography/modern_cryptography.htm)

For a given cryptosystem, a collection of all possible decryption keys is called a key space.

Symetric vs. Asymetric

Challenges in Symetric
- Key establishment
- Trust issue 

Challenge in Asymetric : Share Public Key

=> Public Key Infrastructure (PKI) 
consisting a trusted third party. The third party securely manages and attests to the 
authenticity of public keys. When the third party is requested to provide the public 
key for any communicating person X, they are trusted to provide the correct public key.


[Kerckhoff principle](https://www.tutorialspoint.com/cryptography/cryptosystems.htm)

[RSA](https://www.tutorialspoint.com/cryptography/public_key_encryption.htm)



