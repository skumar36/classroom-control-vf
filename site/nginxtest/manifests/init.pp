class nginxtest {

  File {
    owner  =>  'apache',
    group  =>  'apache',
    mode   =>  '0644',
    }
    file { 'wwww':
    ensure  => directory,
    path  => '/opt/wwww/'
    }
    
    file { '/opt/wwww/file.conf':
    content  =>  'testing 123',
    ensure  => file,
    }
    
    }
