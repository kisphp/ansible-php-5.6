#!/bin/bash

echo "Check MySQL users"
mysql -uroot -proot -e "SELECT User, Host FROM mysql.user;"

echo "Show databases"
mysql -uroot -proot -e "SHOW DATABASES;"
