# Docker: build and run instructions

This project contains two services (backend and frontend) and a Postgres database. The repository already includes a `docker-compose.yml` and Dockerfiles in `backend/` and `frontend/`.

Quick steps (Windows PowerShell):

1. Build images and start containers with docker-compose

```powershell
cd <repo-root>
docker compose build
docker compose up -d
```

2. Verify services

- Frontend (nginx) will be available on http://localhost:3000
- Backend (Spring Boot) will be available on http://localhost:9090
- Postgres will listen on host port 5432

Notes and fixes made

- Backend Dockerfile updated to use Java 21 base images so it matches `pom.xml` `java.version`.
- Maven compiler plugin in `backend/pom.xml` updated to compile with `--release 21`.
- Frontend Dockerfile uses Node 18 build stage and nginx to serve the production `build/` (no changes made).

If you prefer to see build logs directly (no -d):

```powershell
docker compose up --build
```

To stop and remove containers:

```powershell
docker compose down
```

If you want automated build & run script, see `build-and-run.ps1`.
