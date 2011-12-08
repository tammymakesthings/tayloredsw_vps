package :gems do
  description 'Gems for Ruby'

  requires :gem_dependencies
  gem TayloredswVps::Config.required_gems

  requires :ruby

  verify do
    TayloredswVps::Config.required_gems.each do |g|
      ruby_can_load g
    end
  end
end

package :gem_dependencies do
  description "Dependencies for the gems we install"
  
  apt "libcurl3", "libcurl3-gnutls", "libcurl4-openssl-dev", "libxml2", "libxml2-dev", "libxslt1-dev"
end