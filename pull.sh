#!/bin/bash

echo "start pull-->"
date "+%Y-%m-%d %H:%M:%S"

cd /usr/local/apache2/app/blog
git pull

echo "<--end pull"
