node default {
}


node 'master.puppet.vm' {

 file { '/tmp/resource_file_test.txt':
    ensure  => file,
    content => 'This is a resource file creation testing',
    owner   => 'root',
  }
  
  include role::master_server
  
  file { '/root/README':
     ensure  => file,
     content => "Welcome to ${fqdn}\n",
  }
   
}


node 'minetest.puppet.vm'{
 include role::minecraft_server
}


node /^web/ {
 include role::app_server
}


node /^db/ {
 include role::db_server
}
