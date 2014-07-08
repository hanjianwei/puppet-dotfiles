require 'spec_helper'

describe 'dotfiles::tmux' do
  let(:facts) { default_test_facts }

  it do
    should contain_file("/Users/#{facts[:boxen_user]}/.tmux.conf")
  end
end
