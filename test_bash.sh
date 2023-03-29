#!/bin/bash
# 定义镜像名称
IMAGE_NAME="hello_world"
# 定义 Dockerfile 路径
DOCKERFILE="."
# 构建镜像
echo "Building image..."
docker image build -t "$IMAGE_NAME" "$DOCKERFILE"
# 完成
echo "Done."
