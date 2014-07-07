# Public: Config tmux
#
# Examples
#
#     include dotfiles::tmux

class dotfiles::tmux {
  include dotfiles::config

  file { "${dotfiles::config::home}/.tmux.conf":
    ensure => link,
    target => 'puppet:///modules/dotfiles/tmux/tmux.conf'
  }
}
