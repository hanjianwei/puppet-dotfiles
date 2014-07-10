# Public: Config git
#
# Examples
#
#     include dotfiles::git

class dotfiles::git {
  require dotfiles

  dotfiles::link { 'gitconfig':
    from   => 'git',
    prefix => '.',
  }
}
