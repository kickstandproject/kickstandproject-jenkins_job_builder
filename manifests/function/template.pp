# == Define: jenkins_job_builder::function::template
#
# === Parameters
#
# [*content*]
#
# === Authors
#
# Paul Belanger <paul.belanger@polybeacon.com>
#
# === Copyright
#
# Copyright (C) 2012, PolyBeacon, Inc.
#
# This program is free software, distributed under the terms
# of the Apache License, Version 2.0. See the LICENSE file at
# the top of the source tree.
#
define jenkins_job_builder::function::template(
  $content,
) {
  file { "${jenkins_job_builder::params::configdir}/${name}":
    ensure  => file,
    content => $content,
    notify  => Exec['jenkins-jobs-update'],
    require => File[$jenkins_job_builder::params::configdir],
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
