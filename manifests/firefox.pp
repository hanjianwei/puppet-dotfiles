# Public: Config firefox
#
# Examples
#
#     include dotfiles::firefox

class dotfiles::firefox {
  require dotfiles

  $firefoxdir = "${dotfiles::configdir}/firefox"

  file { "${dotfiles::home}/.vimperatorrc":
    ensure => link,
    target => "${firefoxdir}/vimperatorrc"
  }
}
