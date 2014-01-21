jasmine-and-rails-sample
========================

# init project
rails new fizz_buzz


# install qt for running spec without browser
brew install qt

Gemfile...

group :test, :development do
  gem 'jasmine'                 # for spec
  gem 'jasmine-headless-webkit' # for rails integration and headless execution
  gem 'sinon-rails'             # for stub, mock, spy in spec
  gem 'jasmine-sinon-rails'     # for jasmine-sinon-rails integration
end

console...

bundle install

# generate jasmine setting and samples

console...

jasmine init

# setup jasmine.yml

...
src_files:
    - public/javascripts/**/*.js
    - app/assets/javascripts/**/*.js  # add files in app/assets/javascripts
.
.
.
spec_files:
  - '**/*[sS]pec.js'
  - '**/*[sS]pec.coffee'        # accept .coffee
  - '**/*[sS]pec.js.coffee'     # accept .js.coffee
.
.
.
runner_output: "tmp/runner.html"  # spec runner file to check with browser


