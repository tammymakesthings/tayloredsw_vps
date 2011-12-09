#############################################################################
# Before running this, the following minimal configuration steps need to be
# taken:
#
# 1. Install openssh-server on the server if not already present
# 2. Add ssh keys to ~root/.ssh/authorized_keys
# 3. Edit the host IP address in the "role" directive below.
# 4. Edit the root password in the "password" directive below.
#
# Then, run ./install to kick off the host provisioning.
#############################################################################

require 'readline'

set :run_method, :run

role :app, "10.0.3.8"

set :user,      'root'
set :password,  'password'

ssh_options[:compression] = false
ssh_options[:auth_methods] = %w{publickey password keyboard-interactive}

default_run_options[:pty] = true
