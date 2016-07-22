class nginxtest {

  File {
    owner  =>  'apache',
    group  =>  'apache',
    mode   =>  '0644',
    }
    file { 'wwww':
    ensure  => directory,
    path  => '/var/wwww/'
    }
    
    file { '/var/wwww/file.conf':
    content  =>  'testing 123',
    ensure  => file,
    }
    
    }
