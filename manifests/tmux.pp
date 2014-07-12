# Public: Config tmux
#
# Examples
#
#     include dotfiles::tmux

class dotfiles::tmux {
  require dotfiles

  dotfiles::deploy { 'tmux': }
}
