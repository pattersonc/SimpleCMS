source 'http://rubygems.org'

gem 'rails', '3.1.2'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'activeadmin'

# moved out of assets group to fix issue in production
gem 'sass-rails',   '~> 3.1.5'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :production do 
	#required for heroku
	gem "pg"
end

group :development do
	# required for ubuntu linux
	gem 'therubyracer'
	gem "sqlite3-ruby"
  	gem 'rspec-rails'
end

group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
  gem 'rspec-rails'
  gem 'webrat'
  gem 'factory_girl_rails', '1.0'
end
