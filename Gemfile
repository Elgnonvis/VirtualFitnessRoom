source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }


# Core
ruby '3.0.2'
gem 'rails', '~> 6.1.4', '>= 6.1.4.1'

# Serveur et Middleware
gem 'puma', '~> 5.0' # Use Puma as the app server local
gem 'pg', '~> 1.1' # Use postgresql as the database for Active Record
gem 'unicorn'

# Frontend
gem 'webpacker', '~> 5.0' # Read more: https://github.com/rails/webpacker
gem 'summernote-rails'
gem 'kaminari'
gem 'bootstrap4-kaminari-views'
gem 'sass-rails', '>= 6' # Use SCSS for stylesheets
gem 'simple_form', '~> 5.1' # https://github.com/heartcombo/simple_form
gem 'turbolinks', '~> 5' # Turbolinks makes navigating your web application faster
gem 'devise-i18n' # https://github.com/tigrish/devise-i18n
gem 'devise-bootstrap-views', '~> 1.1'



#Image..
# gem 'image_processing', '~> 1.2' # Use Active Storage variant
gem 'cloudinary', '~> 1.21'
gem 'mini_magick', '~> 4.8'
gem 'carrierwave', '~> 2.0'


# Backend
gem 'jbuilder', '~> 2.7' # Build JSON APIs with ease.


# gem 'redis', '~> 4.0' # Use Redis adapter to run Action Cable in production

#Administration & Authentication
# gem 'bcrypt', '~> 3.1.7' #Use Active Model has_secure_password
gem 'devise', '~> 4.8' # https://github.com/heartcombo/devise
gem 'devise_invitable', '~> 2.0', '>= 2.0.5' # https://github.com/scambra/devise_invitable
# gem 'administrate', '~> 0.16.0' # https://administrate-demo.herokuapp.com/
#gem 'rails_admin'
#gem 'cancancan', '~> 3.3'
gem 'mail_form', '~> 1.9' # https://github.com/heartcombo/mail_form
gem 'faker'



gem 'bootsnap', '>= 1.4.4', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'rexml'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'spring' # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'rspec-rails'
  gem 'spring-commands-rspec'
  gem 'factory_bot_rails'
  gem 'launchy'
  gem 'dotenv-rails', '~> 2.7', '>= 2.7.6'
end

group :development do
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'letter_opener_web'
end

group :test do
  gem 'capybara', '>= 3.26' # Adds support for Capybara system testing and selenium driver
  gem 'selenium-webdriver'
  gem 'webdrivers' # Easy installation and use of web drivers to run system tests with browsers
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
