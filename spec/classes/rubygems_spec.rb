require 'spec_helper'

describe 'dotfiles::rubygems' do
  let(:facts) { default_test_facts }

  it do
    should contain_file("#{home}/.gemrc")
  end
end
