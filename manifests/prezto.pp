# Public: Config prezto
#
# Examples
#
#     include dotfiles::prezto

class dotfiles::prezto {
  require dotfiles

  repository { "${dotfiles::home}/.zprezto":
    source => 'sorin-ionescu/prezto'
  }
}
