# Setup

## Required Software
  * [Docker Desktop](https://www.docker.com/products/docker-desktop)
  * [GNU Make](https://www.gnu.org/software/make/)
    * MacOS
      * Install [Xcode](https://developer.apple.com/xcode/) command line tools
        * `xcode-select --install`

# Run App

## Run Containers
  * Run `make start`
  * Browse to http://localhost
  * On first run, you will see an installation screen
    * Use 'mysqldb' as the 'Database host'
      * Docker compose creates this alias as defined in 'docker-compose.yml'
    * Database username, password, and name should match what's in '.env'
  * All of the settings are saved in 'www/_config/config.envs.php'
  * I have been seeing a warning on the done screen, but everything seems to work as expected

## Stop Containers
  * Run `make stop`

## Reset App to uninstalled state
  * Run `make clean-reset`
    * Removes all mysql files
    * Removes all cache files
    * Removes all nginx log files
    * Replaces 'www/_config/config.envs.php' with empty values
