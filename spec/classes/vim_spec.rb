require 'spec_helper'

describe 'dotfiles::vim' do
  let(:facts) { default_test_facts }

  it do
    should contain_repository("#{home}/.vim/bundle/Vundle.vim").with({
      :source => "gmarik/Vundle.vim"
    })
  end
end
