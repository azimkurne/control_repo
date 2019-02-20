class profile::minecraft{
  class { 'minecraft':
    install_dir => '/src/minecraft',
  }
}
