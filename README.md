# DinhMinhNgocThang - Spring Boot Docker CI/CD

## Thông tin dự án
- **Framework**: Spring Boot 4.0.3
- **Java**: 21
- **Port**: 8080
- **Docker Hub**: ngocthang8424/dinhminhngocthang-app

## Chạy ứng dụng

### Docker Compose
```bash
docker compose up --build
```

### Maven
```bash
./mvnw spring-boot:run
```

## CI/CD Pipeline
- ✅ GitHub Secrets: DOCKERHUB_USERNAME, DOCKERHUB_TOKEN
- ✅ Workflow: `.github/workflows/deploy.yml`
- ✅ Trigger: Push to main branch
- ✅ Actions: Build → Push to Docker Hub

## Xem logs
```bash
docker logs dinh-minh-ngoc-thang-app
```
