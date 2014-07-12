require 'spec_helper'

describe 'dotfiles::emacs' do
  let(:facts) { default_test_facts }

  it do
    should contain_repository("#{home}/.emacs.d/snippets").with({
      :source => "hanjianwei/yasnippet-snippets"
    })
  end
end
