node default {
 file {'/home/vagrant/README':
  ensure => file,
  content => 'this is a readme',
  owner => 'root',
 }
}
