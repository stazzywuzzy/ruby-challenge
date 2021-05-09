# Ruby Prime Challenge

## Getting Started

 * Ruby (2.6.6)
 * Rails (6.1.3.2)
 * sqlite3
 * Heroku CLI

## Please follow the Ruby on Rails installation for windows or mac

https://guides.rubyonrails.org/v5.0/getting_started.html

## Available Scripts

In the project folder, please run:

### `bundle install --without production`

to install the available bundles

To start the project, please run:

### `rails s`

Runs the app in the development mode.<br />
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

### `rails test`

Launches the test suites.<br />

### Deployment

Steps to deploy to Heroku:

1. Make a free account on Heroku

2. Download and install Heroku CLI (https://devcenter.heroku.com/articles/heroku-cli)

3. Once Heroku is installed, open the terminal pointing to the project and login to heroku

### 'heroku login'

4. Login on the web browser, can close browser after.

5. In the terminal, create a heroku app

### 'heroku create'

6. Can use "heroku rename {name}" to rename domain name

7. Upload SSH key to Heroku

### 'heroku keys:add'

8. Push master to Heroku

### 'git push heroku master'

9. Need to push the migration to Heroku, run

### 'heroku run rails db:migrate'

10. To open the web app, go the specified url or run:

### 'heroku open'
