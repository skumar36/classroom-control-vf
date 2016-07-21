class aliases (
    $admin = 'root',
) {
    # uses $admin to build the aliases file
    file { '/etc/motd':
        ensure  => file,
        owner   => 'root',
        group   => 'root',
        mode    => '0644',
        content => template('aliases/aliases.erb'),
    }
    exec { '/usr/bin/newaliases':
        refreshonly => true,
        subscribe   => File['/etc/motd'],
    }
}
