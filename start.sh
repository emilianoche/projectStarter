#!/bin/bash

enviroment=${1:-'none'}
action=$2
api=${3:-'none'}
testName=${4:-'none'}
rm ./config/.env
touch ./config/.env
cat ./config/env/.envBase > ./config/.env
if [ $enviroment = 'dev' ]
  then
    if [ $api = 'api' ]
      then
        echo 'starting DEVELOPMENT API only:'
        cat ./config/env/.envDev >> ./config/.env
        cd ./config
        docker-compose -f docker-compose-api.yaml $action
    elif [ $api = 'test' ]
      then
        echo 'starting TESTING enviroment:'
        cat ./config/env/.envTest >> ./config/.env
        if [ $testName != 'none' ]
          then
            echo $testName
            echo CMD=npm run test ./tests/**/$testName.spec.js >>  ./config/.env
          else
            echo 'CMD=npm run test ./tests/**/*.spec.js' >>  ./config/.env
        fi
        cd ./config
        docker-compose -f docker-compose-api.yaml $action pg redis api
    elif [ $api = 'cosmos' ]
      then
        echo 'starting COSMOS enviroment:'
        cat ./config/env/.envCosmos >> ./config/.env
        cd config
        docker-compose -f docker-compose-cosmos.yaml $action app
    else
      echo 'starting DEVELOPMENT:'
      cat ./config/env/.envDev >> ./config/.env
      cd ./config
      docker-compose -f docker-compose.yaml $action
    fi
elif [ $enviroment = 'production' ]
  then
    echo 'starting PRODUCTION:'
    cat ./config/env/.envProd >> ./config/.env
    cd config
    docker-compose -f docker-compose-prod.yaml $action
else
    echo 'incorrect enviroment. Choose "production" or "dev"'
fi
