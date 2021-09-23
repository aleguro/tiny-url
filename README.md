# Tiny URL
> This is a tiny url app
> Live demo [https://ag-tiny-url.herokuapp.com/](https://ag-tiny-url.herokuapp.com/). 

## Table of Contents
* [Dependencies](#Dependencies)
* [Technologies Used](#technologies-used)
* [Features](#features)
* [Setup](#setup)
* [Usage](#usage)
* [Project Status](#project-status)
* [Contact](#contact)


## Dependencies
- Docker
- Heroku toolbelt


## Technologies Used
- Ruby 3.0
- Ruby on rails 6.1
- Docker
- Postgres
- Redis


## Features
- List existing urls
- Visit urls clicking on the short version
- Add a new short url
- Get information of an url and its visits


## Setup

$ make init

$ make start

- Then you can visit the app in [http://localhost:3000/]

## Usage

There are other several commands to aid on development task, such as

- make console (enter rails console)
- make bundle (install new gems)
- make migration migration=createNewTable (creates a schema change)
- make migrate (migrate new schema changes)
- make test (run the test suite)
- make stop (stop the server)


## Project Status

The project include code coverage, that can be examined by clicking on the html file generated after each test (coverage/index.html)

## Contact
Created by [@aleguro](https://www.linkedin.com/in/alejandrogurovich/) - feel free to contact me!


