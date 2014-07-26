# Public: Variables for config
#
# Examples
#
#     require dotfiles::config

class dotfiles::config {
  $home   = "/Users/${::boxen_user}"
  $prefix = "${::boxen_srcdir}/dotfiles"
}
