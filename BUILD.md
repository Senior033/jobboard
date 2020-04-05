# Setup

## Required Software
  * [Docker Desktop](https://www.docker.com/products/docker-desktop)
  * Install [Xcode](https://developer.apple.com/xcode/) command line tools
    * `xcode-select --install`

# Build

## Build Docker images
  * Run `make build`
  * This only needs to be run once to create and register etc/php/Dockerfile

## Run Containers
  * Run `make start`
  * Browse to http://localhost:8080

## First Install
  * Database host is 'mysqldb' as specified in 'docker-compose.yml'

## Stop Containers
  * Run `make stop`
