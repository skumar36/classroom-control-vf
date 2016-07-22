class wrappers::limits {
limits::fragment { "*/soft/nofile":
value => "2048",
}
limits::fragment { "*/hard/nofile":
value => "8194",
}
}
