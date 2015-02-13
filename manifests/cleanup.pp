define tmpwatch::cleanup ($path,$age) {

  cron {"cleanup-${name}{":
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


