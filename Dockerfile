FROM node:14
# Menggunakan image node:14 sebagai base image untuk container

WORKDIR /app
# Mengatur working directory di dalam container menjadi /app

COPY . .
# Menyalin semua file dan folder dari direktori saat ini ke direktori /app di dalam container

ENV NODE_ENV=production DB_HOST=item-db
# Mengatur environment variable NODE_ENV menjadi "production" dan DB_HOST menjadi "item-db"

RUN npm install --production --unsafe-perm && npm run build
# Menjalankan perintah npm install untuk menginstal dependensi
# Kemudian, menjalankan perintah npm run build untuk membuild aplikasi

EXPOSE 8080
# Mengekspos port 8080

CMD ["npm", "start"]
# Menjalankan perintah npm start saat container dijalankan