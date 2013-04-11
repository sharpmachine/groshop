source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'pg'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem "therubyracer"
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem 'twitter-bootstrap-rails'
end

gem 'jquery-rails'
gem 'devise'
gem 'simple_form'

group :development, :test do
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem "factory_girl_rails"
  gem 'capybara'
  gem 'database_cleaner'
  gem "capybara-webkit"
  gem 'spork', '~> 0.9.0.rc'  
  gem 'mocha'
  gem 'thin'  
end

group :development do
  gem 'better_errors' 
  gem 'binding_of_caller'
end  