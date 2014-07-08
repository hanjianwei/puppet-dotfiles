# Public: Config Emacs
#
# Examples
#
#     include dotfiles::emacs

class dotfiles::emacs {
  include dotfiles::config

  file { "${dotfiles::config::home}/.emacs.d":
    ensure => directory
  }

  file { "${dotfiles::config::home}/.emacs.d/init.el":
    ensure => link,
    target => "${dotfiles::config::srcdir}/emacs/init.el"
  }

  repository { "${dotfiles::config::home}/.emacs.d/snippets":
    source => 'hanjianwei/yasnippet-snippets'
  }
}
