source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Shim to load environment variables
gem 'dotenv-rails'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
if (RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/)
  gem 'bcrypt', git: 'https://github.com/codahale/bcrypt-ruby.git', :require => 'bcrypt'
end

# Slim templates generator
gem 'slim-rails'

# Wrapper for ImageMagick or GraphicsMagick command line
gem 'mini_magick'
# Classier solution for file uploads for Rails
gem 'carrierwave'

# Paginator
gem 'kaminari'

# Flexible authentication solution
gem 'devise'
gem 'devise-i18n'

# Authorization Gem for Ruby on Rails
gem 'cancan'

# Administration framework
gem 'activeadmin'
gem 'inherited_resources'
gem 'jquery-ui-rails'

# XML Sitemap generator
gem 'sitemap_generator'

# Cron jobs in Ruby
gem 'whenever', require: false

# ReCaptcha helpers
gem "recaptcha", require: "recaptcha/rails"

group :test do
  # Helper for launching cross-platform applications
  gem 'launchy'
  # Collection of testing matchers
  gem 'shoulda-matchers'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Testing framework
  gem 'rspec-rails'
  # Fixtures replacement with a straightforward definition syntax
  gem 'factory_girl_rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 3.3.0'
  # Official Ruby on Rails specific tasks for Capistrano
  gem 'capistrano-rails'
end

group :production do
  # Use postgresql as the database for Active Record
  gem 'pg', '~> 0.18'
  # High performance memcached client
  gem 'dalli'
end

# Collecting Locale data
gem 'rails-i18n', '~> 5.0.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
