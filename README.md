# tayloredsw_vps: Automate VPS setup for Rails servers #

I frequently set up VPS servers (usually on Linode) for client web sites.
The process of getting MySQL, Apache, Ruby, Passenger, etc. set up is
tedious, repetitive, and time-consuming. `tayloredsw_vps` uses the excellent
[sprinkle](https://github.com/crafterm/sprinkle) gem to automate most of this
process.

## Prerequisites ##

I assume you're running a Debian or Ubuntu host, and make no attempt to
accommodate other host types. I also assume, at a minimum, that the base
operating system is installed and that `openssh-server` is installed and
enabled.

## Configuring and Running ##

Before you can run sprinkle using my configuration, you need to do a couple
of setup steps:

1.  As mentioned above, ensure that the `openssh-server` package is installed
    and that the server is accepting SSH connections.

2.  Copy your SSH public keys to `~root/.ssh/authorized_keys` on the server.

3.  Edit `deploy.rb` as follows:

    - In line 15, fill in the correct hostname or IP address for the server.

    - In lines 16 and 17, fill in the correct username and password (I use root)
     to enable access to the server.

4.  If you need PHP installed on the server, you'll need to go into
    `lib/tayloredsw_vps/config.rb` and change `require_php?` to return `true`.

Once you've done the above, just run `./install` to launch `capistrano` and
kick off the install.

## Questions or feedback? ##

I can be reached at [tammy@tammycravit.com](mailto:tammy@tammycravit.com).

## Acknowledgments ##

I am grateful to Marcus Crafter, author of the `sprinkle` library. Many of
my package definitions were borrowed from
[linode-stack](https://github.com/nate/linode-stack), by Nathan Sutton and
from [sprinkle-linode](https://github.com/tristandunn/sprinkle-linode) by
Tristan Dunn.

