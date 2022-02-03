![wheat-cute](https://user-images.githubusercontent.com/87627363/152444996-f674e3f6-17c9-4729-a635-2883c57395ed.jpg)

**Project Description**

Wheat Cute is a Rails application that aims to connect grain producers with industrial grain consumers in the baking and brewing industry.cal weather information. This repo is the back-end API-only portion of the application, to be combined with a front-end (!!!REPO LINK HERE!!!).

**API Information**

This application uses a PostgresQL database to store Farm/Grain information.

External data is pulled from Mapquest API. Keys to this API are referred to in this repo using environment variables and must be obtained yourself.

This application supports the following API calls:

** WORDS GO HERE **

Method: GET
Path: api/v1/ **WORDSWORDSWORDS **
Params: some_key

Ex:

http://localhost:3000/api/v1/backgrounds?location=Denver,CO'

**Setup**

This project was developed via Ruby 2.7.2, on Rails 5.2.6.

To access the dev environment for this app please follow these steps:

Fork this repository
Clone your fork
From the command line, install gems and set up your DB:
bundle
bundle exec figaro install
rails db:{drop,create,migrate,seed}
You can access the test suite via $bundle exec rspec.

**Contributors**

This project was developed via Ruby on Rails by Christina, Chaz, Nate, Joan, and Philip. This is an assignment based on material created by faculty at the Turing School of Software and Design.
