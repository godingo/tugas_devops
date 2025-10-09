# Gunakan image resmi Node.js versi terbaru
FROM node:18

# Tentukan working directory di dalam container
WORKDIR /usr/src/app

# Salin file package.json dan package-lock.json
COPY package*.json ./

# Instal dependency (jika ada)
RUN npm install

# Salin semua file aplikasi ke dalam container
COPY . .

# Ekspos port 3000
EXPOSE 3000

# Jalankan aplikasi
CMD [ "npm", "start" ]
