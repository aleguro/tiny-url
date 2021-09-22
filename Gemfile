source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'pg'
gem 'sidekiq', '~> 6'
gem 'sidekiq-scheduler'
gem 'puma', '~> 5.0'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'foreman'
  gem 'rubocop'
  gem 'rubocop-rails', require: false
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

# Testing specific
group :test do

  gem 'faker'
  gem 'webmock'
  gem 'simplecov'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'shoulda-matchers'
  gem 'rails-controller-testing'
  gem 'database_cleaner-active_record'
end

group :development, :test do
  gem 'factory_bot_rails'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
