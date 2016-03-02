class demo::mysql {
  
  package { 'mysql-server':
    ensure => present,
  }

  service { 'mysqld':
    ensure  => running,
    require => Package['mysql-server'],
  }
}
