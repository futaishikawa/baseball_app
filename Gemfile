source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

#日本語化
gem 'rails-i18n'
gem 'mysql2'
#gem 'rails', '~> 5.0.7', '>= 5.0.7.2'
gem 'rails',        '5.1.6'
gem 'bcrypt',         '3.1.12'
gem 'bootstrap-sass', '3.3.7'
#gem 'sqlite3', '~> 1.3.6'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'devise'

#カレンダー
gem "bootstrap4-datetime-picker-rails"
gem 'momentjs-rails'
gem "font-awesome-rails"
gem 'bootstrap', '~> 4.1.1'

#sc3
gem 'carrierwave'
gem 'fog'
gem 'mini_magick'


group :development, :test do
  gem 'byebug', platform: :mri
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


group :test do
  gem 'rails-controller-testing', '1.0.2'
  gem 'minitest',                 '5.10.3'
  gem 'minitest-reporters',       '1.1.14'
  gem 'guard',                    '2.13.0'
  gem 'guard-minitest',           '2.4.4'
end

group :production do
    gem 'unicorn'
end



# Windows
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
