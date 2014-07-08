# Public: Config tmux
#
# Examples
#
#     include dotfiles::tmux

class dotfiles::tmux {
  require dotfiles

  dotfiles::link { 'tmux.conf':
    from   => 'tmux',
    prefix => '.',
  }
}
