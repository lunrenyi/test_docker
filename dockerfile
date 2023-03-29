# 使用官方 Python 运行时作为父镜像
FROM python:3.9-slim
# 将工作目录设置为 /app
WORKDIR /app
# 将当前目录下的文件都复制到 /app 中
COPY . /app
# 安装 Flask
RUN pip install Flask
# 设置环境变量
ENV FLASK_APP=hello.py
# 暴露端口 5000
EXPOSE 5000
# 运行 Flask 应用
CMD ["flask", "run", "--host=0.0.0.0"]
