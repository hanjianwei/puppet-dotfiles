# Public: Config git
#
# Examples
#
#     include dotfiles::git

class dotfiles::git {
  require dotfiles

  dotfiles::deploy { 'git': }
}
