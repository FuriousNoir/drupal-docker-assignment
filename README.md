# Drupal Docker Compose Project

This project runs **Drupal + MySQL + phpMyAdmin** using Docker Compose.

## Services

- **Drupal** — available at http://localhost:8080
- **phpMyAdmin** — available at http://localhost:8081
- **MySQL 8.0** — database container

## Requirements

- Docker
- Docker Compose

## Project structure

```bash
drupal-docker-assignment/
├── docker-compose.yml
├── Dockerfile
├── .env.example
├── .gitignore
└── README.md
```

## How to run

1. Copy `.env.example` to `.env`
2. Start containers:

```bash
docker compose up -d --build
```

3. Open in browser:
- Drupal: http://localhost:8080
- phpMyAdmin: http://localhost:8081

## Drupal installation settings

When the Drupal installer asks for database settings, use:

- **Database type:** MySQL / MariaDB
- **Database name:** value from `MYSQL_DATABASE`
- **Database username:** value from `MYSQL_USER`
- **Database password:** value from `MYSQL_PASSWORD`
- **Database host:** `db`

## Stop project

```bash
docker compose down
```

## Stop and remove volumes

```bash
docker compose down -v
```

## GitHub upload

```bash
git init
git add .
git commit -m "Initial Drupal Docker project"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/drupal-docker-assignment.git
git push -u origin main
```

## Notes

This setup is intended for **local development / school assignment**, not for production.
