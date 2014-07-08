# Public: Config keyremap4macbook
#
# Examples
#
#     include dotfiles::keyremap4macbook

class dotfiles::keyremap4macbook {
  require dotfiles

  $keyremap4macbookdir = "${dotfiles::configdir}/keyremap4macbook"

  file { "${dotfiles::home}/Library/Preferences/org.pqrs.KeyRemap4MacBook.plist":
    ensure => link,
    target => "${keyremap4macbookdir}/org.pqrs.KeyRemap4MacBook.plist"
  }

  file { "${dotfiles::home}/Library/Preferences/org.pqrs.KeyRemap4MacBook.multitouchextension.plist":
    ensure => link,
    target => "${keyremap4macbookdir}/org.pqrs.KeyRemap4MacBook.multitouchextension.plist"
  }

  file { "${dotfiles::home}/Library/Application Support/KeyRemap4MacBook/private.xml":
    ensure => link,
    target => "${keyremap4macbookdir}/private.xml"
  }
}
