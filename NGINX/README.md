# OpenSSL 

OpenSSL is a cryptography software library or toolkit that makes communication over computer networks more secure. The OpenSSL program is a command-line tool for using the various cryptography functions of OpenSSL’s crypto library from the shell. It is generally used for Transport Layer Security(TSL) or Secure Socket Layer(SSL) protocols. OpenSSL is licensed under an apache-style license, which means that under some simple license conditions, one can use the toolkit for commercial or non-commercial purposes.

You can check the installed version of OpenSSL command using the following command

    ```bash
    openssl version
    ```

### Create new Private Key and CSR

    ```bash
    openssl req -new -newkey rsa:2048 -nodes -x509 -days 730 -sha512 \
        -keyout ./roudouch.key \
        -out ./roudouch.csr
    ```
note: we have set validity to 730 days but in case you don’t mention this then it will take the value of one month by default, You can even change the algorithm of encryption as per your own convenience. In this example, we have used the SHA512 algorithm. default is sha256. and for the rsa key size, we have used 2048 bits. You can even use 4096 bits.

It will ask for the details like country code, state and locality name, Organization name, your name, email address, etc. And after entering all the details it will generate 2 files one with the CSR extension and the other with key extension representing CSR and private key respectively.

you can enter all the details in one line using the following argument "-subj"
Example:

    ```bash
    openssl req -new -newkey rsa:2048 -nodes -x509 -days 730 \
        -keyout ./roudouch.key \
        -out ./roudouch.csr \
        -subj "/C=MA/ST=Béni Mellal-Khénifra/L=Khouribga/O=1337COMPANY/OU=1337/CN=42.fr"
    ```

C = Country Code (2 letters) The two-letter country code where your company is legally located.
ST = State or Province Name (full name) The full name of the state or province where your company is legally located.
L = Locality Name (eg, city) The full name of the city where your company is legally located.
O = Organization Name (eg, company) The full legal name of your company.
OU = Organizational Unit Name (eg, section) The name of the section of your company.
CN = Common Name (eg, your name or your server’s hostname) The fully qualified domain name (FQDN) for your server.

###  Verifying a CSR file

    ```bash
    openssl req -in ./roudouch.csr -noout -text
    ```
It will display the details you entered at the time of creating the CSR file which could be used to verify that the correct CSR file is sent to the correct receiver.

###  Verifying a Private Key file

    ```bash
    openssl rsa -in private.key -check
    ```

It will verify and check the RSA key and if it is Ok it will display the following result.
    
    ```bash
    RSA key ok
    writing RSA key
    ```
for more info : 
    - https://www.geeksforgeeks.org/practical-uses-of-openssl-command-in-linux/

resources:
    - https://www.digicert.com/kb/ssl-support/openssl-quick-reference-guide.htm
