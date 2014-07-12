# Public: Link config file
#
# Examples
#
#    dotfiles::link{ '.gitconfig': }

define dotfiles::link($config = $title) {
  require dotfiles

  $fullpath = "${dotfiles::home}/${config}"
  $dir = dirname($fullpath)

  ensure_resource( 'exec',  "mkdir -p ${dir}")

  file { $fullpath:
    ensure => link,
    target => "${dotfiles::configdir}/${config}"
  }
}
