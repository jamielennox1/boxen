# == Class: people::jamielennox1
#
class people::jamielennox1 {
  # resources
  notify { 'Hello Jamie': }

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

  include skype
}
