# Docker Setup Instructions

## Build Docker Image

```bash
docker build -t dinh-minh-ngoc-thang:latest .
```

## Run Container

### Option 1: Using Docker directly
```bash
docker run -p 8080:8080 dinh-minh-ngoc-thang:latest
```

### Option 2: Using Docker Compose
```bash
docker compose up --build
```

## Access the Application

Once the container is running, access the application at:
- http://localhost:8080

## Stop Container

### For Docker:
```bash
docker stop <container_id>
```

### For Docker Compose:
```bash
docker compose down
```

## View Container Logs

```bash
docker logs -f <container_id>
```

Or with Docker Compose:
```bash
docker compose logs -f
```

## Clean Up

Remove image:
```bash
docker rmi dinh-minh-ngoc-thang:latest
```

---

## Project Information

- **Spring Boot Version**: 4.0.3
- **Java Version**: 21
- **Container Port**: 8080
- **Framework**: Spring Boot with Thymeleaf
