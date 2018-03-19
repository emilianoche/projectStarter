#!/bin/bash

enviroment=${1:-'none'}
action=$2
api=${3:-'none'}

if [ $enviroment = 'dev' ]
  then
    if [ $api = 'api' ]
      then 
        echo 'starting DEVELOPMENT API only:'
        cp ./config/.envDev ./.env
        docker-compose -f docker-compose-api.yaml $action
    elif [ $api = 'test' ]
      then
        echo 'starting TESTING enviroment:'
        cp ./config/.envTest ./.env
        docker-compose -f docker-compose-api.yaml $action pg redis api
    else
      echo 'starting DEVELOPMENT:'
      docker-compose -f docker-compose.yaml $action
    fi
elif [ $enviroment = 'production' ]
  then
    echo 'starting PRODUCTION:'
    cp ./config/.envProd ./.env
    docker-compose -f docker-compose-prod.yaml $action
else
    echo 'incorrect enviroment. Choose "production" or "dev"'
fi
