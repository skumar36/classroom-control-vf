define user::managed_user (
	$user = $title,
	$group = $title,
	
) {

	user { $title:
	  ensure => present,
}

	file {"/home/${user}":
		ensure  => directory,
		owner   => $user,
		group  => $user,
	}

}
