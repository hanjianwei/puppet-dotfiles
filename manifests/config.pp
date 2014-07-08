# Public: Variables for config
#
# Examples
#
#     require dotfiles::config

class dotfiles::config {
  $home      = "/Users/${::boxen_user}"
  $repo      = 'hanjianwei/dotfiles'
  $configdir = "${::boxen_srcdir}/dotfiles"
}
