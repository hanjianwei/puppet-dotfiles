# Public: Config apps for use with Boxen
#
# Examples
#
#     include dotfiles

class dotfiles(
  $home   = $dotfiles::config::home,
  $prefix = $dotfiles::config::prefix,
) inherits dotfiles::config {
  $apps = loadyaml("${prefix}/app.yaml")
}
