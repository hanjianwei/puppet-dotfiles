# Public: Config vimperator
#
# Examples
#
#     include dotfiles::vimperator

class dotfiles::vimperator {
  require dotfiles

  $vimperatordir = "${dotfiles::configdir}/firefox"

  file { "${dotfiles::home}/.vimperatorrc":
    ensure => link,
    target => "${vimperatordir}/vimperatorrc"
  }
}
