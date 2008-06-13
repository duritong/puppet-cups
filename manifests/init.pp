#
# cups module
#
# Copyright 2008, Puzzle ITC GmbH
# Marcel Härry haerry+puppet(at)puzzle.ch
# Simon Josi josi+puppet(at)puzzle.ch
#
# This program is free software; you can redistribute 
# it and/or modify it under the terms of the GNU 
# General Public License version 3 as published by 
# the Free Software Foundation.
#

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
