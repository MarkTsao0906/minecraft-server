# 使用官方 Java 17 slim 版本
FROM openjdk:17-jdk-slim

# 設定工作目錄
WORKDIR /app

# 複製專案檔案到容器
COPY . .

# 安裝必要工具（可選）
RUN apt-get update && apt-get install -y curl && apt-get clean

# 開放 Minecraft 埠
EXPOSE 25565

# 啟動指令
CMD ["bash", "start.sh"]
