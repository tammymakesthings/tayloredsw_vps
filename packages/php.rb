package :php do
  description "PHP 5 and dependencies"
  apt %w(libapache2-mod-php5 php5 php5-common php5-curl php5-dev php5-gd php5-imagick php5-mcrypt php5-memcache php5-mhash php5-mysql php5-pspell php5-snmp php5-sqlite php5-xmlrpc php5-xsl) do
    post :install, '/etc/init.d/apache2 force-reload'
  end
  
  verify do
    has_executable 'php'
  end
end