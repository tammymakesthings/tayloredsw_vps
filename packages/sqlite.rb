package :sqlite3 do
  description "SQLite"
  
  apt 'sqlite3 libsqlite3-dev'
  gem 'bundler'

  verify do
    has_executable 'sqlite3'
  end
end