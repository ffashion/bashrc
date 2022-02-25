mongod -f ./config/mongod.conf
mongod --configsvr  -f ./config/config_server.conf
mongos -f ./config/router.conf
