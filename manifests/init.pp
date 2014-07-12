# Public: Config apps for use with Boxen
#
# Examples
#
#     include dotfiles

class dotfiles(
  $home      = $dotfiles::config::home,
  $configdir = $dotfiles::config::configdir,
) inherits dotfiles::config {
  $apps = loadyaml("${configdir}/app.yaml")
}
