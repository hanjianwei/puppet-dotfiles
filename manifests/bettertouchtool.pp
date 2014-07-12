# Public: Config bettertouchtool
#
# Examples
#
#     include dotfiles::bettertouchtool

class dotfiles::bettertouchtool {
  require dotfiles

  dotfiles::deploy { 'bettertouchtool': }
}
