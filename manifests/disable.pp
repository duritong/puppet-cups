#######################################
# cups module - disable.pp
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################

# disable cups
class cups::disable inherits cups::base {
    Service[cups]{
        ensure => stopped,
        enable => false,
    }
}
