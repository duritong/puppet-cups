#######################################
# cups module
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################


# modules_dir { "cups": }
class cups {
    include cups::base 
}

class cups::base {
    package{cups:
        ensure => present,
    }
    service{cups:
        ensure => running,
        enable => true,
        require => Package[cups],
    }
}
