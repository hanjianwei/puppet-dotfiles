require 'spec_helper'

describe 'dotfiles::git' do
  let(:facts) { default_test_facts }

  it do
    should contain_file("#{home}/.gitconfig")
  end
end
