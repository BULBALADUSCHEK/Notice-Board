source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

gem 'bcrypt', '~> 3.1.7'
gem 'will_paginate', '~> 3.3'
gem 'devise'
# Use Active Storage variant
# gem 'image_processing', '~> 1.2'


gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  gem 'pry'   
  gem 'rails-controller-testing'
  gem 'rspec-rails'  
end

group :development do
  gem 'web-console', '>= 4.1.0' 
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'  
  gem 'spring'
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem 'rubocop', require: false
  gem 'shoulda-matchers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
