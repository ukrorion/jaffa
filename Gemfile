source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

gem 'rails', '~> 5.2.0.rc2'
gem 'puma', '~> 3.11'

gem 'pg'
gem 'bcrypt', '~> 3.1.7'

gem 'sass-rails', '~> 5.0'
gem 'webpacker'
gem 'haml'
gem 'turbolinks', '~> 5'
gem 'simple_form'

gem 'jbuilder', '~> 2.5'

# gem 'redis', '~> 4.0'
# gem 'capistrano-rails', group: :development
# gem 'mini_magick', '~> 4.8'


gem 'bootsnap', '>= 1.1.0', require: false
group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
