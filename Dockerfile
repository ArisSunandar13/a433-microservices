# Menggunakan image node versi 18 yang berbasis Alpine Linux sebagai base image
FROM node:18-alpine  

# Mengatur direktori kerja di dalam container menjadi /app
WORKDIR /app 

# Menyalin semua file dan folder dari direktori saat ini ke direktori /app di dalam container
COPY . .  

# Menginstal bash di dalam container untuk digunakan dalam script
RUN apk add --no-cache bash  

# Mengunduh script wait-for-it.sh dari GitHub dan menyimpannya di /bin/wait-for-it.sh di dalam container
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh  

# Memberikan izin eksekusi pada script wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh  

# Menjalankan perintah npm install untuk menginstal semua dependensi yang diperlukan oleh aplikasi
RUN npm install  

# Mengekspos port 3000 di dalam container
EXPOSE 3000  

# Menjalankan perintah npm start saat container dijalankan
CMD [ "npm", "start" ]  