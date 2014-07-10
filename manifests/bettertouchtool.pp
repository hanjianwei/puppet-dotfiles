# Public: Config bettertouchtool
#
# Examples
#
#     include dotfiles::bettertouchtool

class dotfiles::bettertouchtool {
  require dotfiles

  dotfiles::link { 'com.hegenberg.BetterTouchTool.plist':
    from => 'bettertouchtool',
    to   => 'Library/Preferences/',
  }

  dotfiles::link { 'bttdata2':
    from => 'bettertouchtool',
    to   => 'Library/Application Support/BetterTouchTool/',
  }
}
