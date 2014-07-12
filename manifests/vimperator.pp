# Public: Config vimperator
#
# Examples
#
#     include dotfiles::vimperator

class dotfiles::vimperator {
  require dotfiles

  dotfiles::deploy { 'vimperator': }
}
