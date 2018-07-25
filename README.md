# README

## Ruby version
  2.5.1

## Requirements
Docker is required to run this project

## Pushing image to Heroku
`heroku container:push web --recursive --context-path .`
Since we keep dockerfile in another directory we need to use the recursive flag. When using the `recursive` flag we need to set the context with the `context-path` flag


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
