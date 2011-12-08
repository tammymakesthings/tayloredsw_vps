module TayloredswVps
  module Config
    
    extend self
    
    def require_php?
      false
    end
    
    def required_gems
      [
        'bundler', 
        'haml-rails', 
        'simple_form', 
        'sass-rails', 
        'therubyracer', 
        'draper'
      ]
    end
  end
end