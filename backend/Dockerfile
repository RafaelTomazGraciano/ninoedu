# ---- Estágio 1: Build com Maven ----
FROM maven:3.9-eclipse-temurin-21-alpine AS build

WORKDIR /app

# Copia pom.xml primeiro para aproveitar cache de dependências
COPY pom.xml .
RUN mvn dependency:go-offline -B

# Copia o código fonte e compila (sem rodar testes)
COPY src ./src
RUN mvn package -DskipTests -B

# ---- Estágio 2: Runtime ----
FROM eclipse-temurin:21-jre-alpine

WORKDIR /app

# Copia apenas o JAR gerado (finalName = api)
COPY --from=build /app/target/api.jar app.jar

EXPOSE 8080

# JWT_SECRET pode ser passado como variável de ambiente ao rodar o container
# DB_URL, DB_USERNAME, DB_PASSWORD também são configuráveis externamente
ENTRYPOINT ["java", "-jar", "app.jar"]
