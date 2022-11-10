source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise'
gem 'jbuilder', '~> 2.5'
gem 'pg'
gem 'puma'
gem 'rails', '~> 7.0'
gem 'slim-rails'
gem 'view_component'

group :development, :test do
  gem 'awesome_print'
  gem 'capybara'
  gem 'debug'
  gem 'faker'
  gem 'foreman'
  gem 'pry'
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
  gem 'selenium-webdriver'
  gem 'table_print'
end

group :development do
  gem 'flamegraph'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'rack-mini-profiler', require: false
  gem 'stackprof'
  gem 'web-console'
end

group :test do
  gem 'factory_bot_rails'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'launchy'
  gem 'simplecov'
  gem 'terminal-notifier-guard'
end
