# Public: Deploy config file
#
# Examples
#
#     dotfiles::deploy { 'git': }

define dotfiles::deploy($app = $title) {
  require dotfiles

  $configs = $dotfiles::apps[$app]

  dotfiles::link { $configs: }
}
