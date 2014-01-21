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