package :logrotate do
  apt 'logrotate'

  verify do
    has_executable 'logrotate'
  end
end