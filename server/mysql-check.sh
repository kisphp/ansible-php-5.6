#!/bin/bash

echo "Check MySQL users"
mysql -uroot -e "SELECT User, Host FROM mysql.user;"

echo "Show databases"
mysql -uroot -e "SHOW DATABASES;"
