puppet-dotfiles
===============

Puppet module for app config

[![Build Status](https://travis-ci.org/hanjianwei/puppet-dotfiles.svg?branch=master)](https://travis-ci.org/hanjianwei/puppet-dotfiles)

See my [dotfiles](https://github.com/hanjianwei/dotfiles) and [boxen](https://boxen.github.com).


## Usage

~~~ puppet
dotfiles::deploy { 'vim': }
~~~

You can customize `dotfiles` location by changing Hiera value (e.g. `/opt/boxen/repo/hiera/users/hanjianwei.yaml`):

~~~ yaml
dotfiles::prefix: "/Users/%{::boxen_user}/Dropbox/dotfiles"
~~~

## Required Puppet Modules

- `boxen`
- `stdlib`
- `repository`
