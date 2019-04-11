node default {
  ensure  => file,
  content => 'This is a resource file for testing',
  owner   => 'root',
}
