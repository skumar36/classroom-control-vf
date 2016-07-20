package { 'memcached':
  ensure  =>  present,
  before  =>  Service['memcached'],
  }
  
  file { '/etc/sysconfig/memcached':
    ensure  => file,
    source  => '/tmp/memcached',
    }
    
    service { 'memcached':
      ensure  => running,
      enable  => true,
      subscribe  => File['/etc/sysconfig/memcached'],
      }
