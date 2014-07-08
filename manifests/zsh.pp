# Public: Config zsh
#
# Examples
#
#     include dotfiles::zsh

class dotfiles::zsh {
  require dotfiles

  dotfiles::link { ['zshrc',
                    'zshenv',
                    'zlogin',
                    'zlogout',
                    'zpreztorc',
                    'activate.sh']:
    from   => 'zsh',
    prefix => '.',
  }

  repository { "${dotfiles::home}/.zprezto":
    source => 'sorin-ionescu/prezto'
  }
}
