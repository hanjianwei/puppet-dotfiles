# Public: Link config file
#
# Examples
#
#    dotfiles::link{ '.gitconfig': }

define dotfiles::link($config = $title) {
  require dotfiles

  $srcpath  = "${dotfiles::prefix}/${config}"
  $linkpath = "${dotfiles::home}/${config}"

  $parents = missing_parents($linkpath)
  ensure_resource('file', $parents, {'ensure' => 'directory'})

  if file_exists($srcpath) {
    file { $linkpath:
      ensure => link,
      target => $srcpath,
    }
  }
}
