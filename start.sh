#!/bin/bash
npm install
mysql -u root --password=root -e "CREATE DATABASE ebooks;"
mysql -u root --password=root ebooks < data/data.sql
node app

