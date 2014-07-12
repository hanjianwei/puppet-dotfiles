# Public: Config keyremap4macbook
#
# Examples
#
#     include dotfiles::keyremap4macbook

class dotfiles::keyremap4macbook {
  require dotfiles

  dotfiles::deploy { 'keyremap4macbook': }
}
