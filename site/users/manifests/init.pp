class users::admins {
users::managed_user { 'sk123': }
users::managed_user { 'sk1234':
group => 'staff',
}

group { 'staff':
ensure => present,
}
}
