# 使用官方 Java 17（Minecraft 1.18+ 版本都支援）
FROM openjdk:17-jdk-slim

# 設定工作目錄
WORKDIR /app

# 複製所有檔案進容器
COPY . .

# 同意 EULA（若 eula.txt 不存在就自動建立）
RUN echo "eula=true" > eula.txt

# 開放 Minecraft 埠
EXPOSE 25565

# 啟動伺服器
CMD ["java", "-Xmx1G", "-Xms512M", "-jar", "server.jar", "nogui"]
