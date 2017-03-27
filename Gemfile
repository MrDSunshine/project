source 'http://rubygems.org'


gem 'rails', '4.2.6'
gem 'bcrypt', '~> 3.1.7'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'will_paginate', '3.0.7'
gem 'bootstrap-will_paginate', '0.0.10'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# Use Unicorn as the app server
# gem 'unicorn'


group :development, :test do
  gem 'sqlite3'
  gem 'web-console', '~> 2.0'
  gem 'byebug'
  gem 'spring'
end

group :test do
  gem 'minitest-reporters', '1.0.17'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  gem 'unicorn'
  gem 'unicorn-rails'
  gem 'pg'
  gem 'rails_12factor'
end
