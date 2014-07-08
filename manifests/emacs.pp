# Public: Config Emacs
#
# Examples
#
#     include dotfiles::emacs

class dotfiles::emacs {
  require dotfiles

  file { "${dotfiles::home}/.emacs.d":
    ensure => directory
  }

  dotfiles::link { 'init.el':
    from => 'emacs',
    to   => '.emacs.d/',
  }

  repository { "${dotfiles::home}/.emacs.d/snippets":
    source => 'hanjianwei/yasnippet-snippets'
  }
}
