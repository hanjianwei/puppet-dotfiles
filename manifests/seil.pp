# Public: Config seil
#
# Examples
#
#     include dotfiles::seil

class dotfiles::seil {
  require dotfiles

  dotfiles::link { 'org.pqrs.Seil.plist':
    from => 'seil',
    to   => 'Library/Preferences/',
  }
}
