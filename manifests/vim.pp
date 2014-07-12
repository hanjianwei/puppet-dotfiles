# Public: Config vim
#
# Examples
#
#     include dotfiles::vim

class dotfiles::vim {
  require dotfiles

  dotfiles::deploy { 'vim': }

  repository { "${dotfiles::home}/.vim/bundle/Vundle.vim":
    source => 'gmarik/Vundle.vim'
  }
  ->
  exec { 'vim +BundleInstall +BundleClean +qall': }
}
