require 'spec_helper'

describe 'dotfiles::vimperator' do
  let(:facts) { default_test_facts }

  it do
    should contain_file("/Users/#{facts[:boxen_user]}/.vimperatorrc")
  end
end
