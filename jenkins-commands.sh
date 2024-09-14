#!/bin/bash

# Execute setup scripts for mysql
docker exec -it mysql-5.7 bash -c "cat setup_mysql_dev.sql | mysql"
docker exec -it mysql-5.7 bash -c "cat setup_mysql_dev.sql | mysql"

# Run unittests
docker exec -it flask-server python3 -m unittest discover tests
docker exec -it -e HBNB_ENV=test -e HBNB_MYSQL_USER=hbnb_test -e HBNB_MYSQL_PWD=hbnb_test_pwd -e HBNB_MYSQL_HOST=mysql -e HBNB_MYSQL_DB=hbnb_test_db -e HBNB_TYPE_STORAGE=db flask-server python3 -m unittest discover tests
