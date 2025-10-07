FROM openjdk:21-jdk-slim

WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install -y curl && \
    curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.21/builds/123/downloads/paper-1.21-123.jar && \
    chmod +x start.sh

EXPOSE 25565
CMD ["bash", "start.sh"]
