# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.4"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 6.0.0"
# Use sqlite3 as the database for Active Record
# gem 'sqlite3', '~> 1.4'
gem "mysql2"
# Use Puma as the app server
gem "puma", "~> 3.11"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.2", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :test do
  gem "rspec-rails"
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "capistrano", "~> 3.10", require: false
  gem "capistrano-bundler"
  gem "capistrano-rails", "~> 1.4", require: false
  gem "capistrano-rails-console"
  gem "capistrano-rbenv"
  gem "capistrano-rbenv-vars"
  gem "capistrano-sidekiq"
  gem "capistrano-ssh-doctor", git: "https://github.com/capistrano-plugins/capistrano-ssh-doctor.git"
  gem "capistrano3-puma"
  gem "rubocop", require: false
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "rubocop-packaging", require: false
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

gem "activerecord-import"
gem "aws-sdk"
gem "kaminari"
gem "nokogiri"
gem "ridgepole"
gem "rubocop-rails"

# エラー通知
gem "exception_notification", github: "smartinez87/exception_notification"
gem "slack-notifier"

# cron
gem "whenever", require: false
