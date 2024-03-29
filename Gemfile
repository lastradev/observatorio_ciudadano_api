# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.2'

gem 'dotenv-rails', groups: %i[development test]

# Use main development branch of Rails
gem 'rails', github: 'rails/rails', branch: 'main'

# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.5'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 6.0'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-byebug', '~> 3.10'
  gem 'rspec-rails'
  gem 'rswag-specs'
  gem 'rubocop', '~> 1.50', require: false
  gem 'rubocop-rails', require: false
  gem 'ruby-lsp', require: false
  gem 'solargraph', group: :development
  gem 'solargraph-rails', group: :development
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

gem 'nokogiri', '~> 1.14'

gem 'httparty', '~> 0.21.0'

gem 'smarter_csv', '~> 1.7'

gem 'whenever', '~> 1.0', require: false

gem 'kaminari', '~> 1.2'

gem 'rswag-api'
gem 'rswag-ui'
