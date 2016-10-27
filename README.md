## redis in
brew install redis

```
  brew services start redis
```

```
  redis-server /usr/local/etc/redis.conf

```


```
gem 'redis'
gem 'redis-namespace'
gem 'puma'

```


```
    # redis = Redis.new
    # redis.subscribe('item') do |on|
    #   on.message do |event, data|
    #     # Rails.logger("data:#{data}")
    #     response.stream.write("data: #{data}\n\n")
    #   end
    # end
```


```
➜  ~ redis-cli
127.0.0.1:6379> PUBLISH redisChat "Redis is a great caching technique"
```



```
cache演示 
先安装
brew install memcached

brew services start memcached
启动服务


gem 'dalli'

development.rb文件修改
config.cache_store = :dalli_store
config.action_controller.perform_caching = true


初始化数据库
rake db:setup
```