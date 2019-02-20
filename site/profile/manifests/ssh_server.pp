class profile::ssh_server{
	package { 'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm'
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa'
		key.   => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC14CUT/O1CY6d6UK5qinp/kADpfSCBkVqLn4srQ73RbBfSf0LSr8+6neO7/GcEzREgYxVuY1KQJLB0gnZuq+G2z4b5xuvf0rIMNppXAdSUxnPbH6449k7BESo8xiG2voGA3HXwBHUgpL0rFdNiUud6Qh5Cnhtaqeu8bk/YLfbd8Rkspu7/z6tgqIXJTa1D0BTSsput62kQ/uHsNpaL5wbfbyJiCFr8jK3QtyqJLyySJLdGEhy/OKy9TYpwlqw95n0cbeI33WsqaiBcAINBHqLhjtIs5l+53htPPNdY8shxxVhtkAGn1WzKo1K8OySl4E1fdZEkdrokF9rCnrcuJY+7',
	}
}
