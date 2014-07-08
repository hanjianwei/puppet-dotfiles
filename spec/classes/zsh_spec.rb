require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/

describe 'dotfiles::zsh' do
  let(:facts) { default_test_facts }

  it do
    should contain_file("/Users/#{facts[:boxen_user]}/.zshrc")
  end

  it do
    should contain_file("/Users/#{facts[:boxen_user]}/.zshenv")
  end

  it do
    should contain_file("/Users/#{facts[:boxen_user]}/.zlogin")
  end

  it do
    should contain_file("/Users/#{facts[:boxen_user]}/.zlogout")
  end

  it do
    should contain_file("/Users/#{facts[:boxen_user]}/.zpreztorc")
  end

  it do
    should contain_file("/Users/#{facts[:boxen_user]}/.activate.sh")
  end

  it do
    should contain_repository("/Users/#{facts[:boxen_user]}/.zprezto").with({
      :source => "sorin-ionescu/prezto"
    })
  end
end
