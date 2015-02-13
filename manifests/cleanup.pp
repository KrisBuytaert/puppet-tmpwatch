define tmpwatch::cleanup ($path,$age) {

  include tmpwatch
  cron {"cleanup-${name}":
    ensure   => present,
    user     => 'root',
    command  => "/usr/bin/tmpwatch ${age} ${path}",
    minute   => '03',
    hour     => '03',
    month    => '*',
    monthday => '*',
    weekday  => '*',
  }
}


