# Public: Config vim
#
# Examples
#
#     include dotfiles::vim

class dotfiles::vim {
  require dotfiles

  $vimdir = "${dotfiles::configdir}/vim"

  file { "${dotfiles::home}/.vimrc":
    ensure => link,
    target => "${vimdir}/vimrc"
  }

  file { "${dotfiles::home}/.gvimrc":
    ensure => link,
    target => "${vimdir}/gvimrc"
  }

  repository { "${dotfiles::home}/.vim/bundle/Vundle.vim":
    source => 'gmarik/Vundle.vim'
  }
  ->
  exec { 'vim +BundleInstall +BundleClean +qall': }
}
