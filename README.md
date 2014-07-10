puppet-dotfiles
===============

Puppet module for app config

[![Build Status](https://travis-ci.org/hanjianwei/puppet-dotfiles.svg?branch=master)](https://travis-ci.org/hanjianwei/puppet-dotfiles)

See my [dotfiles](https://github.com/hanjianwei/dotfiles) and [boxen](https://boxen.github.com).


## Usage

``` puppet
package { 'vim': }
->
class { 'dotfiles::vim': }

```

## Required Puppet Modules

- `boxen`
- `stdlib`
- `repository`
