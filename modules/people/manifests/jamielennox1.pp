# == Class: people::jamielennox1
#
class people::jamielennox1 {

  class { '::virtualbox':
    version    => '5.0.10',
    patch_level => '104061',
  }

  include vim
  vim::bundle { [
    'scrooloose/syntastic',
    'sjl/gundo.vim',
    'rodjek/vim-puppet'
  ]: }

  package { 'skype':
    provider => 'brewcask',
  }

  include spotify

  class { '::vagrant':
    version => '1.7.4',
  }

}
