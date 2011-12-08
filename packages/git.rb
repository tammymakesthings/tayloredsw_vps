package :git, :provides => :scm do
  description 'Git version control client'
  apt 'git-core'

  verify do
    has_executable 'git'
  end
end