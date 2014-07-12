# Public: Config zsh
#
# Examples
#
#     include dotfiles::zsh

class dotfiles::zsh {
  require dotfiles

  repository { "${dotfiles::home}/.zprezto":
    source => 'sorin-ionescu/prezto'
  }
}
