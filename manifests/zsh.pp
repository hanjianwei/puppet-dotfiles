# Public: Config zsh
#
# Examples
#
#     include dotfiles::zsh

class dotfiles::zsh {
  require dotfiles

  $zshdir = "${dotfiles::configdir}/zsh"

  file { "${dotfiles::home}/.zshrc":
    ensure => link,
    target => "${zshdir}/zshrc"
  }

  file { "${dotfiles::home}/.zshenv":
    ensure => link,
    target => "${zshdir}/zshenv"
  }

  file { "${dotfiles::home}/.zlogin":
    ensure => link,
    target => "${zshdir}/zlogin"
  }

  file { "${dotfiles::home}/.zlogout":
    ensure => link,
    target => "${zshdir}/zlogout"
  }

  repository { "${dotfiles::home}/.zprezto":
    source => 'sorin-ionescu/prezto'
  }
  ->
  file { "${dotfiles::home}/.zpreztorc":
    ensure => link,
    target => "${zshdir}/zpreztorc"
  }

  file { "${dotfiles::home}/.activate.sh":
    ensure => link,
    target => "${zshdir}/activate.sh"
  }
}
