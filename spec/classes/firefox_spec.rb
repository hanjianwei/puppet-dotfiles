require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/

describe 'dotfiles::firefox' do
  let(:facts) { default_test_facts }

  it do
    should contain_file("/Users/#{facts[:boxen_user]}/.vimperatorrc")
  end
end
