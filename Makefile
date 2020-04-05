build:
	@docker build -t docker-php-fpm-image ./etc/php/

# Resets entire app back to uninstalled state
clean-reset:
	@rm -rf ./www/_cache/*
	@rm -rf ./www/_tpl/default/_cache/*
	@rm -rf ./www/sjs-admin/_cache/*
	@rm -rf ./www/sjs-admin/_tpl/_cache/*
	@rm -rf ./data
	@rm -rf ./log
	@cp ./reset/config.envs.php ./www/_config/config.envs.php

start:
	@docker-compose up -d
	@chmod -R 777 ./www/_config/config.envs.php
	@chmod -R 777 ./www/_cache
	@chmod -R 777 ./www/_tpl/default/_cache
	@chmod -R 777 ./www/sjs-admin/_tpl/_cache
	@chmod -R 777 ./www/db
	@chmod -R 777 ./www/blog/content
	@chmod -R 777 ./www/uploads

stop:
	@docker-compose down -v
