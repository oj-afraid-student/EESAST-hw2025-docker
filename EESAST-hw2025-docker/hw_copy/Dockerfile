FROM ubuntu:20.04

# 安装g++编译器
RUN apt-get update && apt-get install -y g++

# 创建/app目录并复制源代码
WORKDIR /app
COPY src/mul.cpp /app/mul.cpp
COPY src/add.cpp /app/add.cpp

# 编译两个程序
RUN g++ -o /app/mul /app/mul.cpp && \
    g++ -o /app/add /app/add.cpp

# 设置默认命令
CMD ["echo", "Usage: docker run <image> <program> <num1> <num2>"]