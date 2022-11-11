
# generate a self-signed certificate

openssl req -new -newkey rsa:2048 -nodes \
    -keyout ./roudouch.key \
    -out ./roudouch.csr \
    -subj "/C=MA/ST=Béni Mellal-Khénifra/L=Khouribga/O=1337COMPANY/OU=1337/CN=42.fr"