jasmine-and-rails-sample
========================

Console...

    # init project
    rails new fizz_buzz

    # jasmine-headless-webkit のために QtWebKit をインストール
    brew install qt

Gemfile...

    group :test, :development do
      gem 'jasmine'                 # for spec
      gem 'jasmine-headless-webkit' # for rails integration and headless execution
      gem 'sinon-rails'             # for stub, mock, spy in spec
      gem 'jasmine-sinon-rails'     # for jasmine-sinon-rails integration
    end

Console...

    bundle install

    # generate jasmine setting and samples

    jasmine init

spec/javascripts/support/jasmine.yml

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
      - '**/*[sS]pec.coffee'        # spec として *spec.coffee を受け付ける
      - '**/*[sS]pec.js.coffee'     # *spec.js.coffee を受け付ける

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

Console...

    # spec の実行
    jasmine-headless-webkit

    # tmp/runner.html をブラウザで表示することで、ブラウザでもテストできる

# 参考

- jasmine
  - https://jasmine.github.io/
- jasmine-headless-webkit
  - http://johnbintz.github.io/jasmine-headless-webkit/
