node default{
  file { '/tmp/README':
    ensure => file,
    content => 'This is first resource file',
  }
}
