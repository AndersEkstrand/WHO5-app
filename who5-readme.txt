# WHO-5 Välbefinnande Tracker

En modern webbapp för att spåra patienters välbefinnande med WHO-5 formuläret.

## Funktioner

- 🔒 Säker användarautentisering
- 📊 Visualisering av data över tid
- 📝 WHO-5 formulärhantering
- 📤 Export av data
- 👥 Användarhantering för administratörer
- 📱 Responsiv design

## Snabbstart

1. Klona projektet:
```bash
git clone [repository-url]
cd who5-tracker
```

2. Kör installations-skriptet:
```bash
chmod +x setup.sh
./setup.sh
```

3. Öppna webbläsaren och gå till:
```
http://localhost:3000
```

### Inloggningsuppgifter
- Admin:
  - Email: admin@example.com
  - Lösenord: admin123

## Teknisk Stack

- Next.js 13+ med App Router
- TypeScript
- Prisma (PostgreSQL)
- NextAuth.js
- Tailwind CSS
- Shadcn/ui
- Recharts
- Docker

## Utveckling

```bash
# Kör i utvecklingsläge
npm run dev

# Bygg för produktion
npm run build

# Starta produktionsserver
npm start
```

## Miljövariabler

Se `.env.example` för nödvändiga miljövariabler.

## Docker

```bash
# Bygg och starta med Docker
docker-compose up -d

# Stoppa containrar
docker-compose down
```

## Backup & Restore

Backup av databasen:
```bash
docker exec -t who5-tracker-db-1 pg_dump -U who5user who5db > backup.sql
```

Återställ databasen:
```bash
cat backup.sql | docker exec -i who5-tracker-db-1 psql -U who5user -d who5db
```

## Licens

MIT
