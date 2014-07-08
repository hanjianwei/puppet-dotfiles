# Public: Config Emacs
#
# Examples
#
#     include dotfiles::emacs

class dotfiles::emacs {
  require dotfiles

  $emacsdir = "${dotfiles::configdir}/emacs"

  file { "${dotfiles::home}/.emacs.d":
    ensure => directory
  }

  file { "${dotfiles::home}/.emacs.d/init.el":
    ensure => link,
    target => "${emacsdir}/init.el"
  }

  repository { "${dotfiles::home}/.emacs.d/snippets":
    source => 'hanjianwei/yasnippet-snippets'
  }
}
