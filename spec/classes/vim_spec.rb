require 'spec_helper'
# Rename this file to classname_spec.rb
# Check other boxen modules for examples
# or read http://rspec-puppet.com/tutorial/

describe 'dotfiles::vim' do
  let(:facts) { default_test_facts }

  it do
    should contain_file("/Users/#{facts[:boxen_user]}/.vimrc")
  end

  it do
    should contain_file("/Users/#{facts[:boxen_user]}/.gvimrc")
  end

  it do
    should contain_repository("/Users/#{facts[:boxen_user]}/.vim/bundle/Vundle.vim").with({
      :source => "gmarik/Vundle.vim"
    })
  end
end
