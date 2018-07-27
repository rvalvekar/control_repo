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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCyV/S5Pwd7L3bIkqFqMQ7G5CF282mrc3WDC07DXu7QjPzc1u5wW8ZWFJGf/9RkHQNZ5PiDsgb9ctIr3OIpNCIZ/cLXpYPN0eTqU5WE0gNj7icBjWj1usW4OCVZSqteT+4uqitMrN8rhqRr52vFmtuO8YrDy5Pm1WWcULA5CN/afpcPUmn++CJtM2DAA7UBQ8ggbfMpw6BbuAXc8H3r8F05q2RrdcrbdSQ0aUm5wD5KlHBNYLBcxs1AHU+/g9TJOfyhRDtRoKZqmPTBTsDsvuAAf996f2aeYpyVOoDFB0oZloQZiUL3ciUcHuCYccMbADh45TU82VSdlYPRCX2YeKQ5',
	}  
}
