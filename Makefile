build:
	@docker build -t docker-php-fpm-image ./etc/php/

start:
	@docker-compose up -d

stop:
	@docker-compose down -v
