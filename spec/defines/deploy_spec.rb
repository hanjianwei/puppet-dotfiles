require 'spec_helper'

describe 'dotfiles::deploy' do
  let(:title) { 'ack' }
  let(:facts) { default_test_facts }

  it do
    should contain_file("#{home}/.ackrc")
  end
end
