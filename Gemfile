source 'https://rubygems.org'

gem 'rails', '4.0.5'

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'newrelic_rpm'
end

group :development do
  gem 'sqlite3'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'spring-commands-rspec'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'pry-rails'
  gem 'database_cleaner'
  gem 'factory_girl_rails', '~> 4.0'
end

gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.0.0'

gem 'jquery-rails'

gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc

gem 'faker'
gem 'devise'
gem 'figaro'
gem 'pundit'
gem 'simple_form'
gem 'redcarpet'
gem 'carrierwave'
gem 'mini_magick'
gem 'bootstrap-sass', '~> 3.1.1'
gem 'fog'
gem 'will_paginate', '~> 3.0.5'



gem 'unicorn', group: :production
gem 'thin', group: :development
