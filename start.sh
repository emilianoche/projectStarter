#!/bin/bash

enviroment=${1:-'none'}
action=$2
api=${3:-'none'}

if [ $enviroment = 'dev' ]
  then
    if [ $api = 'api' ]
      then 
        echo 'starting Development API only:'
        cp ./config/.envDev ./.env
        docker-compose -f docker-compose-api.yaml $action
    elif [ $api = 'test' ]
      then
        echo 'starting TEST enviroment:'
        cp ./config/.envTest ./.env
        docker-compose -f docker-compose-api.yaml $action pg redis api
    else
      echo 'starting Development:'
      docker-compose -f docker-compose.yaml $action
    fi
elif [ $enviroment = 'production' ]
  then
    echo 'starting Production:'
    cp ./config/.envProd ./.env
    docker-compose -f docker-compose-prod.yaml $action
else
    echo 'incorrect enviroment. Choose "production" or "dev"'
fi
