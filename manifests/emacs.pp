class dotfiles::emacs {
  include dotfiles::config

  file { "${dotfiles::config::home}/.emacs.d":
    ensure => directory
  }

  file { "${dotfiles::config::home}/.emacs.d/init.el":
    ensure => link,
    target => "puppet:///modules/dotfiles/emacs/init.el"
  }

  repository { "${dotfiles::config::home}/.emacs.d/snippets":
    source => "hanjianwei/yasnippet-snippets"
  }
}
