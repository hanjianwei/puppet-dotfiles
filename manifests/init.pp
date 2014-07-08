# Public: Config apps for use with Boxen
#
# Examples
#
#     include dotfiles

class dotfiles(
  $repo      = $dotfiles::config::repo,
  $configdir = $dotfiles::config::configdir,
) inherits dotfiles::config {
  $home = $dotfiles::config::home

  repository { $configdir:
    source => $repo
  }

  File {
    require => Repository[$configdir]
  }
}
