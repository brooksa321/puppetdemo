class demo::linuxappbase {
    #Ensure Development Tools are installed
    exec { 'yum groupinstall Development Tools':
      command             => '/usr/bin/yum -y --disableexcludes=all groupinstall "Development Tools"',
      unless        => '/usr/bin/yum grouplist "Development Tools" | /bin/grep "^Installed"',
      timeout => 600 ,
    }

    package { 'perl-ExtUtils-Embed':
      ensure => present,
    }
    
    #Set up usr* directories
    $server_dirs = [ '/usr1', '/usr2', '/usr3', '/usr4',
                      '/usr4/logs', '/usr4/logs/apache',
                      '/usr4/logs/solr']

    file { $server_dirs:
      ensure  => 'directory',
      owner   => 'root',
      group   => 'root',
      mode    => '0644',
     } -> #and then

    #Install mod_perl
    puppi::netinstall{ "free-tds":
      url                 => 'ftp://ftp.freetds.org/pub/freetds/current/freetds-current.tar.gz',
      destination_dir     => '/usr4',
      extracted_dir       => '/freetds-dev.0.99.625',
      postextract_command => '/usr4/freetds-dev.0.99.625/configure --prefix=/usr1/freetds; make ; make install',
    }

}


