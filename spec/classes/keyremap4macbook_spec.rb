require 'spec_helper'

describe 'dotfiles::keyremap4macbook' do
  let(:facts) { default_test_facts }

  it do
    should contain_file("#{home}/Library/Preferences/org.pqrs.KeyRemap4MacBook.plist")
  end

  it do
    should contain_file("#{home}/Library/Preferences/org.pqrs.KeyRemap4MacBook.multitouchextension.plist")
  end

  it do
    should contain_file("#{home}/Library/Application Support/KeyRemap4MacBook/private.xml")
  end
end
