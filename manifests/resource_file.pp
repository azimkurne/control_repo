node default {
  file { '/tmp/resource_file_test.txt':
    ensure  => file,
    content => 'This is a resource file for testing',
    owner   => 'root',
  }
}
