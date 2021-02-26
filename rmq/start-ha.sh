#!/usr/bin/env bash

# 创建目录
mkdir -p ./rmqs/logs
mkdir -p ./rmqs/store
mkdir -p ./rmq/alogs
mkdir -p ./rmq/astore
mkdir -p ./rmq/aslogs
mkdir -p ./rmq/asstore
mkdir -p ./rmq/blogs
mkdir -p ./rmq/bstore
mkdir -p ./rmq/bslogs
mkdir -p ./rmq/bsstore

# 设置目录权限
chmod -R 777 ./rmqs/logs
chmod -R 777 ./rmqs/store
chmod -R 777 ./rmq/alogs
chmod -R 777 ./rmq/astore
chmod -R 777 ./rmq/aslogs
chmod -R 777 ./rmq/asstore
chmod -R 777 ./rmq/blogs
chmod -R 777 ./rmq/bstore
chmod -R 777 ./rmq/bslogs
chmod -R 777 ./rmq/bsstore

# 下载并启动容器，且为 后台 自动启动
docker-compose -f docker-compose-ha.yml up -d


# 显示 rocketmq 容器
docker ps |grep rocketmq
