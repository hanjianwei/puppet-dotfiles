require 'spec_helper'

describe 'dotfiles::bettertouchtool' do
  let(:facts) { default_test_facts }

  it do
    should contain_file("#{home}/Library/Preferences/com.hegenberg.BetterTouchTool.plist")
  end

  it do
    should contain_file("#{home}/Library/Application Support/BetterTouchTool/bttdata2")
  end
end
