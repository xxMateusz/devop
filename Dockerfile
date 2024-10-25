# Wybór obrazu bazowego
FROM node:14

# Ustawienie katalogu roboczego
WORKDIR /app

# Kopiowanie plików package.json oraz package-lock.json
COPY package*.json ./

# Instalacja zależności
RUN npm install

# Kopiowanie całego kodu aplikacji
COPY . .

# Ustawienie zmiennej środowiskowej
ENV PORT=3000

# Otworzenie portu aplikacji
EXPOSE 3000

# Uruchomienie aplikacji
CMD ["npm", "start"]

