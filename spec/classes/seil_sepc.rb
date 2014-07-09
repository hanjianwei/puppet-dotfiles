require 'spec_helper'

describe 'dotfiles::seil' do
  let(:facts) { default_test_facts }

  it do
    should contain_file("#{home}/Library/Preferences/org.pqrs.Seil.plist")
  end
end
