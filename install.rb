STACK_PATH = File.dirname(__FILE__)

def slurp_and_require_dir(the_dir)
  $:<< File.join(STACK_PATH, the_dir)
  Dir.glob(File.join(STACK_PATH, the_dir, "**", "*.rb")).each do |lib|
    require lib
  end
end  

slurp_and_require_dir "lib"
slurp_and_require_dir "sprinkle"
slurp_and_require_dir "packages"

policy :tayloredsw_vps, :roles => :app do
  requires :build_essential
  requires :git
  requires :image_magick
  requires :logrotate
  requires :ntp
  requires :monit
  
  requires :apache
  
  requires :php     # Enable if needed

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
