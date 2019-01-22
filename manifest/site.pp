node default {
  file { '/root/README':
    ensure  => file,
    content => 'This is a readme',
    owner   => 'root',
  }
}
node 'master.puppet.vm' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
  }
}
node /^web/ {
  file { '/root/thisisatest':
    ensure => file,
    content => 'lol'
  }
  include role::app_server
}
node /^db/ {
  include role::db_server
}
