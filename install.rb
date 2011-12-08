STACK_PATH = File.dirname(__FILE__)

$:<< File.join(STACK_PATH, "lib")
Dir.glob(File.join(STACK_PATH, "lib", "**", "*.rb")).each do |lib|
  require lib
end

Dir.glob(File.join(STACK_PATH, "sprinkle", "**", "*.rb")).each do |lib|
  require lib
end

Dir.glob(File.join(STACK_PATH, "packages", "*.rb")).each do |lib|
  require lib
end

$:<< File.join(STACK_PATH, "sprinkle")
$:<< File.join(STACK_PATH, "packages")

policy :tayloredsw_vps, :roles => :app do
  requires :build_essential
  requires :git
  requires :image_magick
  requires :logrotate
  requires :ntp
  requires :monit
  
  requires :apache
  
  if TayloredswVps::Config.require_php?
    requires :php     # Enable if needed
  end

  requires :mysql
  requires :sqlite3

  requires :ruby
  requires :rubygems
  requires :gems
  requires :passenger
end

deployment do
  delivery :capistrano
  
  source do
    prefix    '/usr/local'
    archives  '/usr/local/src'
    builds    '/usr/local/build'
  end
end
