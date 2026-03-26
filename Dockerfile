# Multi-stage build
FROM eclipse-temurin:21-jdk as builder

WORKDIR /build
COPY . .

RUN chmod +x ./mvnw && ./mvnw clean package -DskipTests

# Runtime stage
FROM eclipse-temurin:21-jre

WORKDIR /app

# Copy JAR from builder
COPY --from=builder /build/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
