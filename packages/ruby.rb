package :ruby do
  description 'Ruby Virtual Machine'
  version TayloredswVps::PackageVersions.ruby_version
  patchlevel TayloredswVps::PackageVersions.ruby_patchlevel
  source "ftp://ftp.ruby-lang.org/pub/ruby/#{TayloredswVps::PackageVersions.ruby_major_version}/ruby-#{version}-p#{patchlevel}.tar.gz"

  requires :ruby_dependencies

  verify do
    has_executable 'ruby'
  end
end

package :rubygems do
  description 'Ruby Gems Package Management System'
  version TayloredswVps::PackageVersions.rubygems_version
  source "http://production.cf.rubygems.org/rubygems/rubygems-#{version}.tgz" do
    custom_install 'ruby setup.rb'
  end

  requires :ruby

  verify do
    ruby_can_load 'rubygems'
  end
end