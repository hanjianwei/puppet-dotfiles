# Public: Config vim
#
# Examples
#
#     include dotfiles::vim

class dotfiles::vim {
  require dotfiles

  dotfiles::link { ['vimrc', 'gvimrc']:
    from   => 'vim',
    prefix => '.',
  }

  repository { "${dotfiles::home}/.vim/bundle/Vundle.vim":
    source => 'gmarik/Vundle.vim'
  }
  ->
  exec { 'vim +BundleInstall +BundleClean +qall': }
}
