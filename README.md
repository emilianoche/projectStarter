<p align="center">
    <img src="https://i.imgur.com/I51Iagy.gif" />
</p>

## Dependencies

- node
- npm
- Docker
- Docker-Compose

> if you are in any debian based distro you could just install docker and docker-compose with `apt-get install docker.io docker-compose`

## Starting a project

Clone this repo.

Run `npm install`, in the base directory. This will install dependencies such as `eslinter`, etc.. for correct development.

## Available commands.

- `npm start`: starts the server in **development** mode.
- `npm test`: runs all tests, if you pass the name of a file it will run just those tests.
- `npm run lint`: lint the entire code.
- `npm run cosmos`: starts **cosmos** dev enviroment.
- `npm run build`: **you need to rebuild the docker-container everytime you install a new dependency**.
- `npm run production`: **WIP**, use it on your won risk.

> All scripts calls the *start.sh* script, you can use it by yourself too.

## Start.sh

This script will let you start different enviroments:

### Start Dev server

`./start.sh dev {{up/build}}`

> The api and the app (front-end) will be started in dev mode.

### Start Cosmos Enviroment

`./start.sh dev {{up/build}}`cosmos

> This will start __cosmos__ enviroment for developing React Components

### Start Dev server (ONLY API)

`./start.sh dev {{up/build}} api`

> This will start only the API, you can send requests to `http://localhost/api/`

### Run API tests

`./start.sh dev {{up/build}} test`

> This will run all the *.spec.js files found in /tests

If you only want to run one spec file, add the spec file name (without .spec.js) after test:

`./start.sh dev {{up/build}} test {{specName}}`

This will execute only the specs with the exact file name.

### Start Production Server

> WIP: this migth fail.

`./start.sh production {{up/build}}`

> This should run a production build of webpack, and raise an nginx server to serve all static files and the api at port 80. This includes forever inside the container to keep the API running even if error occurs.

<p align="center">
    <img src="https://i.imgur.com/CFreJep.jpg" />
</p>
