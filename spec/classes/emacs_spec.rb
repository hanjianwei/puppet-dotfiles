require 'spec_helper'

describe 'dotfiles::emacs' do
  let(:facts) { default_test_facts }

  it do
    should contain_file("/Users/#{facts[:boxen_user]}/.emacs.d/init.el")
  end

  it do
    should contain_repository("/Users/#{facts[:boxen_user]}/.emacs.d/snippets").with({
      :source => "hanjianwei/yasnippet-snippets"
    })
  end
end
