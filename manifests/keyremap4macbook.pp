# Public: Config keyremap4macbook
#
# Examples
#
#     include dotfiles::keyremap4macbook

class dotfiles::keyremap4macbook {
  require dotfiles

  dotfiles::link { ['org.pqrs.KeyRemap4MacBook.plist',
                    'org.pqrs.KeyRemap4MacBook.multitouchextension.plist']:
    from => 'keyremap4macbook',
    to   => 'Library/Preferences/',
  }

  dotfiles::link { 'private.xml':
    from => 'keyremap4macbook',
    to   => 'Library/Application Support/KeyRemap4MacBook/',
  }
}
