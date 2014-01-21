jasmine-and-rails-sample
========================

rails new fizz_buzz

Gemfile...

group :test, :development do
  gem 'jasmine-headless-webkit' # for spec
  gem 'sinon-rails'             # for stub, mock, spy in spec
  gem 'jasmine-sinon-rails'     # for jasmine-sinon-rails integration
end

console...

bundle install