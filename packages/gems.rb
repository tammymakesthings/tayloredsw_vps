package :gems do
  description 'Gems for Ruby'

  gem 'bundler'
  
  apt "libcurl3", "libcurl3-gnutls", "libcurl4-openssl-dev", "libxml2", "libxml2-dev", "libxslt1-dev"

  requires :ruby

  verify do
    ruby_can_load 'bundler'
  end
end