# projectStarter

Dockerized Project BoilerPlate for Dev5.

<p align="center">
    <img src="https://i.imgur.com/I51Iagy.gif" />
</p>

## Features

- Built-in Authentification
- Redis
- Postgres
- Express
- Reverse Proxy with Nginx

## Dependencies

Just docker and docker compose!

## Starting a project

Clone this repo.
Use `./start.sh`

### Start Dev server

`./start.sh dev {{up/build}}`

### Start Dev server (ONLY API)

`./start.sh dev {{up/build}} api`

### Run API tests

`./start.sh dev {{up/build}} test`

### Start Production Server

> WIP: this migth fail.

`./start.sh production {{up/build}}`


## To do

+ Add React Development enviroment with Storybook or similar.
+ Add a picante Webpack with optimizations for deployment

<p align="center">
    <img src="https://i.imgur.com/CFreJep.jpg" />
</p>