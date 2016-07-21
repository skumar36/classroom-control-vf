define users::managed_user (
	$group = 'sky',
	
) {

	user { $title:
	  ensure => present,
}

	group { $group:
	ensure => present,
}

	file {"/home/${title}":
		ensure  => directory,
		owner   => $title,
		group  => $group,
	}

}
