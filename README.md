# README

## 开发配置

### 数据库创建
```
docker ps -a // 查看docker列表，找到山竹记账的id
docker start id

```

### 单元测试
```
//创建测试数据库
RAILS_ENV=test bin/rails db:create
RAILS_ENV=test bin/rails db:migrate
```