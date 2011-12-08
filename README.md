# tayloredsw_vps: Automate VPS setup for Rails servers #

I frequently set up VPS servers (usually on Linode) for client web sites.
The process of getting MySQL, Apache, Ruby, Passenger, etc. set up is
tedious, repetitive, and time-consuming. `tayloredsw_vps` uses the excellent
[https://github.com/crafterm/sprinkle][sprinkle] gem to automate most of this
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

    In line 15, fill in the correct hostname or IP address for the server.

    In lines 16 and 17, fill in the correct username and password (I use root)
    to enable access to the server.

Once you've done the above, just run `./install` to launch `capistrano` and
kick off the install.

## Questions or feedback? ##

I can be reached at [mailto:tammy@tammycravit.com][tammy@tammycravit.com].
