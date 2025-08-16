docker build -t hw_vol_image -f hw_vol/Dockerfile .

docker run --rm \
  --mount type=bind,source=$(pwd)/src,target=/app \
  hw_vol_image \
  sh -c "g++ -o /app/mul /app/mul.cpp && /app/mul $1 $2"  # 编译并运行mul
