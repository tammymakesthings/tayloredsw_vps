package :gems do
  description 'Gems for Ruby'

  requires :gem_dependencies
  TayloredswVps::Config.required_gems.each do |g|
    gem g
  end

  requires :ruby
end

package :gem_dependencies do
  description "Dependencies for the gems we install"
  
  apt "libcurl3", "libcurl3-gnutls", "libcurl4-openssl-dev", "libxml2", "libxml2-dev", "libxslt1-dev"
end