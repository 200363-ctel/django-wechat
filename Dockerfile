# 匹配项目的Node版本，用稳定镜像
FROM node:18-alpine

# 设置容器工作目录
WORKDIR /app

# 先复制依赖锁文件，缓存安装层
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制全部项目代码
COPY . .

# 端口和云托管页面统一为8080
EXPOSE 8080

# 启动命令（绝大多数Node后端默认启动是npm start）
CMD ["npm", "start"]
