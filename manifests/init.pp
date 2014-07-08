# Public: Config apps for use with Boxen
#
# Examples
#
#     include dotfiles

class dotfiles(
  $home      = $dotfiles::config::home,
  $repo      = $dotfiles::config::repo,
  $configdir = $dotfiles::config::configdir,
) inherits dotfiles::config {

  repository { $configdir:
    source => $repo
  }

  File {
    require => Repository[$configdir]
  }
}
