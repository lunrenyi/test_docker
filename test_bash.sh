#!/bin/bash
# 定义镜像名称
IMAGE_NAME="hello_world"
# 定义 Dockerfile 路径
DOCKERFILE="./dockerfile"
# 构建镜像
echo "Building image..."
docker image build -t "$IMAGE_NAME" "$DOCKERFILE"

# 运行容器
echo "Starting container..."
docker run -p 5000:5000 --name=hello "$IMAGE_NAME"

echo "Done."
