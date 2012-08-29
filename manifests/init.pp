# Class: tmpwatch
#
# This module manages tmpwatch
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# [Remember: No empty lines between comments and class definition]
class tmpwatch {


  package {'tmpwatch':
    ensure => 'present'
  }



}

define tmpwatch::cleanup ($path,$age) {

  cron {"cleanup-$name":
    ensure   => present,
    user     => 'root',
    command  => "/usr/bin/tmpwatch $age $path",
    minute   => '03',
    hour     => '03',
    month    => '*',
    monthday => '*',
    weekday  => '*',
  }
}


