# Public: Config tmux
#
# Examples
#
#     include dotfiles::tmux

class dotfiles::tmux {
  require dotfiles

  $tmuxdir = "${dotfiles::configdir}/tmux"

  file { "${dotfiles::home}/.tmux.conf":
    ensure => link,
    target => "${tmuxdir}/tmux.conf"
  }
}
