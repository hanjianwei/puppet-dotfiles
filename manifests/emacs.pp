# Public: Config Emacs
#
# Examples
#
#     include dotfiles::emacs

class dotfiles::emacs {
  require dotfiles

  repository { "${dotfiles::home}/.emacs.d/snippets":
    source => 'hanjianwei/yasnippet-snippets'
  }
}
