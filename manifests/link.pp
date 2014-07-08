# Public: Link config file
#
# Examples
#
#     include dotfiles::link

define dotfiles::link($from, $config = $title, $to = '', $prefix='') {
  require dotfiles

  $fromdir = "${dotfiles::configdir}/${from}"
  $todir   = "${dotfiles::home}/${to}"

  file { "${todir}${prefix}${config}":
    ensure => link,
    target => "${fromdir}/${config}"
  }
}
