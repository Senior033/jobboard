# Resets entire app back to uninstalled state
clean-reset:
	@rm -rf ./www/_cache/*
	@rm -rf ./www/_tpl/default/_cache/*
	@rm -rf ./www/sjs-admin/_cache/*
	@rm -rf ./www/sjs-admin/_tpl/_cache/*
	@rm -rf ./data
	@rm -rf ./log
	@cp -v ./reset/config.envs.php ./www/_config/config.envs.php

start:
	@cp -nv ./reset/config.envs.php ./www/_config/config.envs.php ||:
	@docker-compose up -d

	# As specified by https://simplejobscript.com/installation-issues-fixes/
	@chmod -R 777 ./www/_config/config.envs.php
	@chmod -R 777 ./www/_cache
	@chmod -R 777 ./www/_tpl/default/_cache
	@chmod -R 777 ./www/sjs-admin/_tpl/_cache
	@chmod -R 777 ./www/db
	@chmod -R 777 ./www/blog/content
	@chmod -R 777 ./www/uploads

stop:
	@docker-compose down -v
