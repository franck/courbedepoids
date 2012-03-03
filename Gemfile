source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

gem 'bourbon'
gem "delocalize"

gem 'omniauth-facebook'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
gem "rspec-rails", :group => [:test, :development] 
group :test do   
  gem "factory_girl_rails"   
  gem "capybara"
  gem "capybara-webkit"
  gem 'database_cleaner'
  gem "guard-rspec"
  gem "spork", ">0.9.0.rc"
  gem "guard-spork"
  gem "turn", :require => false
end