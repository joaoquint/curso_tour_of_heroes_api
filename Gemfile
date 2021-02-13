source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'active_model_serializers', '~> 0.10.12'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.0'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem "rack-cors", "~> 1.1"
gem "rubocop", require: false

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'sqlite3', '~> 1.4'
  gem "rspec-rails", "~> 4.0"
end

group :development do
  gem 'faker', '~> 2.15'
  gem 'listen', '~> 3.4'
  gem 'spring', '~> 2.1'
end

group :production do
  gem "pg", "~> 1.2"
end

group :test do
  gem "shoulda-matchers", "~> 4.5"
  gem "simplecov", "~> 0.21.2", require: false
end
