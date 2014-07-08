require 'spec_helper'

describe 'dotfiles::zsh' do
  let(:facts) { default_test_facts }

  ['.zshrc', '.zshenv', '.zlogin', '.zlogout', '.zpreztorc', '.activate.sh'].each do |f|
    it { should contain_file("#{home}/#{f}") }
  end

  it do
    should contain_repository("#{home}/.zprezto").with({
      :source => "sorin-ionescu/prezto"
    })
  end
end
