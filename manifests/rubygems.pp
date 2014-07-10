# Public: Config rubygems
#
# Examples
#
#     include dotfiles::rubygems

class dotfiles::rubygems {
  require dotfiles

  ensure_resource('file', "${dotfiles::home}/.gemrc", {'ensure' => 'present'})

  # Override boxen gemrc
  File <| title == "${dotfiles::home}/.gemrc" |> {
    ensure => 'link',
    source => undef,
    target => "${dotfiles::configdir}/rubygems/gemrc",
  }
}
