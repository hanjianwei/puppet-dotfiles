# Public: Config vim
#
# Examples
#
#     include dotfiles::vim

class dotfiles::vim {
  include dotfiles::config

  file { "${dotfiles::config::home}/.vimrc":
    ensure => link,
    target => 'puppet:///modules/dotfiles/vim/vimrc'
  }

  repository { "${dotfiles::config::home}/.vim/bundle/Vundle.vim":
    source => 'gmarik/Vundle.vim'
  }
  ->
  exec { 'vim +BundleInstall +BundleClean +qall': }
}
