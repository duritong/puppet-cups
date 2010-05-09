class cups::base {
    include tmpwatch
    package{cups:
        ensure => present,
        require => Package[tmpwatch],
    }
    service{cups:
        ensure => running,
        enable => true,
        require => Package[cups],
    }
}
