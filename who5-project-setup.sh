#!/bin/bash

# Skapa .env fil
cat > .env << EOL
# Database
DATABASE_URL="postgresql://who5user:who5password@localhost:5432/who5db"
POSTGRES_USER=who5user
POSTGRES_PASSWORD=who5password
POSTGRES_DB=who5db

# Auth
NEXTAUTH_URL="http://localhost:3000"
NEXTAUTH_SECRET="$(openssl rand -base64 32)"

# App
NODE_ENV=production
EOL

# Installera beroenden och bygg appen
npm install
npm run build

# Skapa initial admin-användare
npx ts-node scripts/create-admin.ts

# Starta Docker containers
docker-compose up -d
