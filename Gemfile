source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

group :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "rspec"
  gem "rspec-core"

  # Adds support for Capybara system testing and selenium driver
  gem "capybara", ">= 2.15"
gem 'selenium-webdriver', '= 3.142.7'
  # Easy installation and use of web drivers to run system tests with browsers
  gem "webdrivers"
  gem "shoulda-matchers"
end
