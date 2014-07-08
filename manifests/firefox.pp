# Public: Config firefox
#
# Examples
#
#     include dotfiles::firefox

class dotfiles::firefox {
  include dotfiles::config

  file { "${dotfiles::config::home}/.firefox.conf":
    ensure => link,
    target => "${dotfiles::config::srcdir}/firefox/firefox.conf"
  }
}
