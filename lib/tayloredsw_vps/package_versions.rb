module TayloredswVps
  module PackageVersions
    
    extend self
    
    def mod_passenger_version
      '3.0.11'
    end
        
    def ruby_version
      '1.9.2'
    end
    
    def ruby_patchlevel 
      '290'
    end
    
    def ruby_major_version
      ruby_version.split('.')[0..1].join('.')
    end
    
    def rubygems_version 
      '1.8.10'
    end
    
    def libmemcache_version
      "0.48"
    end
  end
end

