require 'spec_helper'

describe 'dotfiles::deploy' do
  let(:title) { 'vim' }
  let(:facts) { default_test_facts }

  describe 'when config not available' do
    it { should_not contain_file("#{home}/.gvimrc") }
  end

  describe 'when config available' do
    it { should contain_file("#{home}/.vimrc") }
  end
end
