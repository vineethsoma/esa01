group { "wheel":
  ensure => "present",
}
group { "iam":
  ensure => "present",
  require => group ["wheel"],
}
user { "iamuser":
  ensure => "present",
  gid => "iam",
  groups =>["wheel"],
  shell => "/bin/bash",
  home => "/home/iamuser",
  managehome => true,
  password => "oraclE123",
  require => group["iam"],
}
