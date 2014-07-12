require 'spec_helper'

describe 'dotfiles::prezto' do
  let(:facts) { default_test_facts }

  it do
    should contain_repository("#{home}/.zprezto").with({
      :source => "sorin-ionescu/prezto"
    })
  end
end
