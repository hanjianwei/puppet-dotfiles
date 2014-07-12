# Public: Config seil
#
# Examples
#
#     include dotfiles::seil

class dotfiles::seil {
  require dotfiles

  dotfiles::deploy { 'seil': }
}
