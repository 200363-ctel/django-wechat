FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# 容器监听端口，要和页面填写的8080一致
EXPOSE 8080

# Django启动命令，适配8080端口
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
