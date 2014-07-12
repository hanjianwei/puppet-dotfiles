# Public: Config zsh
#
# Examples
#
#     include dotfiles::zsh

class dotfiles::zsh {
  require dotfiles

  dotfiles::deploy { 'zsh': }
  dotfiles::deploy { 'prezto': }

  repository { "${dotfiles::home}/.zprezto":
    source => 'sorin-ionescu/prezto'
  }
}
