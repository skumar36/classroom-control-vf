class nginxtest {

  File {
    owner  =>  'apache',
    group  =>  'apache',
    mode   =>  '0644',
    }
    file { 'www':
    ensure  => directory,
    path  => '/var/www/'
    }
    
    file { '/var/www/file.conf':
    content  =>  'testing 123',
    ensure  => file,
    }
    
    }
