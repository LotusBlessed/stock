# 使用官方 Python 映像
FROM python:3.11-slim

# 設定工作目錄
WORKDIR /app

# 複製專案檔案
COPY . .

# 安裝依賴
RUN pip install --no-cache-dir -r requirements.txt

# 開放 port
EXPOSE 8000

# 啟動命令
CMD ["python", "app.py"]
