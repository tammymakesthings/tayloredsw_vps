package :mysql do
  describe 'MySQL database server and client'
  apt 'mysql-server mysql-client'

  verify do
    has_executable 'mysql'
  end
end