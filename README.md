# Ruby Prime Challenge

## Getting Started

 * Ruby (2.6.6)
 * Rails (6.1.3.2)
 * sqlite3
 * Heroku CLI

## Please follow the Ruby on Rails installation for windows or mac

https://guides.rubyonrails.org/v5.0/getting_started.html

If Ruby and Rails are already installed, please make sure the versions are up to date.

The versions can be checked by using "ruby -v" and "rails -v"

## Project Setup

In the project folder, please run:

### `bundle install --without production`

to install the available bundles.

Then run:

### 'rails webpacker:install'

To migrate the db, run:

### 'rails db:migrate'

To start the project, please run:

### rails s

Runs the app in the development mode.<br />
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

### rails test

Launches the test suites.<br />

## Deployment Setup

Need to have Heroku Account. If not, then please sign up for a free account at https://signup.heroku.com/

Download and install Heroku CLI (https://devcenter.heroku.com/articles/heroku-cli)

Steps to deploy to Heroku:

Once Heroku is installed, open the terminal pointing to the project and login to heroku.

### 'heroku login'

Login on the web browser, can close browser after.

In the terminal, create a heroku app.

### 'heroku create'

Can use "heroku rename {name}" to rename domain name

Upload SSH key to Heroku

### 'heroku keys:add'

Push master to Heroku

### 'git push heroku master'

Need to push the database to Heroku, run

### 'heroku run rails db:migrate'

To open the web app, go the specified url or run:

### 'heroku open'
