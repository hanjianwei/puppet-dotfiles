# Public: Config Emacs
#
# Examples
#
#     include dotfiles::emacs

class dotfiles::emacs {
  require dotfiles

  dotfiles::deploy { 'emacs': }

  repository { "${dotfiles::home}/.emacs.d/snippets":
    source => 'hanjianwei/yasnippet-snippets'
  }
}
