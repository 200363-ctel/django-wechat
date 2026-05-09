FROM python:3.10-slim

WORKDIR /app

# 假设你的项目代码都在仓库里的 myproject 子文件夹
COPY ./myproject /app

COPY requirements.txt /app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8080

# 确保manage.py在当前目录
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
