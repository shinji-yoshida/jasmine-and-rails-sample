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

.
.
.

src_files:
  # src_dir で設定したディレクトリ以下の全ての js, coffee ファイルを対象にする
  - "*.js"
  - "*.coffee"

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

src_dir:
  # public/javascripts, app/asset/javascripts を ソースファイルの root にする
  - public/javascripts
  - app/assets/javascripts

.
.
.

runner_output: "tmp/runner.html"  # ブラウザで spec を実行できるようにする


