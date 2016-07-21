class nginxtest {

  File {
    owner  =>  'apache',
    group  =>  'apache',
    mode   =>  '0644',
    }
    
    file { '/var/www/file.conf':
    content  =>  'testing 123',
    ensure  => present,
    }
    
    }
