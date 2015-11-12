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

  package { ['skype', 'terraform', 'packer', 'google-chrome']:
    provider => 'brewcask',
  }

  package { ['rubocop', 'puppet-lint', 'r10k']:
    ensure   => installed,
    provider => gem,
  }

  include spotify

  class { '::vagrant':
    version => '1.7.4',
  }

  include atom

  atom::package { 'linter': }
  atom::package { 'language-puppet': }
  atom::package { 'language-terraform': }
  atom::package { 'linter-puppet-lint': }
  atom::package { 'linter-rubocop': }



}
