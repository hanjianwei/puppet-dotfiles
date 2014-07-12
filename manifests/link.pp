# Public: Link config file
#
# Examples
#
#    dotfiles::link{ '.gitconfig': }

define dotfiles::link($config = $title) {
  require dotfiles

  $srcpath  = "${dotfiles::configdir}/${config}"
  $linkpath = "${dotfiles::home}/${config}"
  $linkdir  = dirname($linkpath)

  ensure_resource('exec',  "mkdir -p ${linkdir}")

  if file_exists($srcpath) {
    file { $linkpath:
      ensure => link,
      target => $srcpath,
    }
  }
}
