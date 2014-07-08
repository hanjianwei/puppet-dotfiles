require 'spec_helper'

describe 'dotfiles' do
  let(:facts) { default_test_facts }

  it do
    should contain_repository("#{facts[:boxen_srcdir]}/dotfiles").with({
      :source => "hanjianwei/dotfiles"
    })
  end
end
