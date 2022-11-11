
# generate a self-signed certificate

```bash
openssl req -new -newkey rsa:2048 -nodes \
    -keyout ./roudouch.key \
    -out ./roudouch.csr \
    -subj "/C=MA/ST=Béni Mellal-Khénifra/L=Khouribga/O=1337COMPANY/OU=1337/CN=42.fr"
```
resources: https://www.digicert.com/kb/ssl-support/openssl-quick-reference-guide.htm