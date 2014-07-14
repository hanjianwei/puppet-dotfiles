# Public: Deploy config file
#
# Examples
#
#     dotfiles::deploy { 'git': }

define dotfiles::deploy($app = $title) {
  require dotfiles

  $configs = $dotfiles::apps[$app]

  if $configs {
    dotfiles::link { $configs: }
  }

  if defined("dotfiles::${app}") {
    include "dotfiles::${app}"
  }
}
