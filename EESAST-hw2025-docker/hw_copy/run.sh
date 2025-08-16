#!/bin/bash
# 构建Docker镜像（-t指定镜像名，.表示当前目录为构建上下文）
docker build -t hw_copy_image -f hw_copy/Dockerfile .

# 运行mul程序，传入参数3和4
docker run --rm hw_copy_image /app/mul 3 4  # 运行mul程序，传入参数3和4
#docker run --rm hw_copy_image /app/add 5 6  # 运行add程序，传入参数5和6
