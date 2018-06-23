source 'https://rubygems.org'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise'
gem 'jbuilder', '~> 2.5'
gem 'pg'
gem 'puma', '~> 3.11'
# gem 'rack-cors'
gem 'rails', '~> 5.2.0'
gem 'slim-rails'
gem 'webpacker'

group :development, :test do
  gem 'awesome_print'
  gem 'bullet'
  gem 'byebug'
  gem 'capybara'
  gem 'foreman'
  gem 'pry'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'table_print'
end

group :development do
  gem 'flamegraph'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'memory-profiler'
  gem 'rack-mini-profiler', require: false
  gem 'stackprof'
  gem 'web-console'
end

group :test do
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'launchy'
  gem 'simplecov'
  gem 'terminal-notifier-guard'
end
