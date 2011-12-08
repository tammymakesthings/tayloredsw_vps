STACK_PATH = File.dirname(__FILE__)

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
  requires :apache
  requires :mysql
  requires :sqlite3
  requires :gems
  requires :passenger
  requires :ruby
  requires :git
  requires :image_magick
end

deployment do
  delivery :capistrano
  
  source do
    prefix    '/usr/local'
    archives  '/usr/local/src'
    builds    '/usr/local/build'
  end
end
