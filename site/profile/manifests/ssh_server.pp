class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCspPqVjkxkQhmCfW8ZZQfPvSC2powQDTl4Bi5F+WVrfZChpPIK1TS++QHK1oJhNVPGsSEr1Mq9egQ+8wEfbebiIWd5jFdqAXgDsF1WbuzCGGyB+kJY/HiVV1d2+/9LZoVl1i/1UeUWH3NI4C2Cf30QL5t92SoMdZEhlWzEzs/apvX8BsyWHeesozKKtjJVgKEE1nDrPvdnillwoVEzt9xCd/+nFUdBJWf8PDjr2U8WSeOWAS6JCYflXPEMzMzgcCi2fNmMKr6qauYMSjGR98Uvjzl8AYhJkEvCPz72GzvepOx0WAXUUsZhgUQhPWLaa6AULHpLRyqXqoZvf/u/Ou03',
	}
}
