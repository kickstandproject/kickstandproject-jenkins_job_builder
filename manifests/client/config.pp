# == Class: jenkins_job_builder::client::config
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
class jenkins_job_builder::client::config {
  file { $jenkins_job_builder::params::basedir:
    ensure  => directory,
    require => Class['jenkins_job_builder::client::install'],
  }

  file { $jenkins_job_builder::params::configdir:
    ensure  => directory,
    notify  => Exec['jenkins-job-update'],
    purge   => true,
    recurse => true,
    require => File[$jenkins_job_builder::params::basedir],
  }

  file { $jenkins_job_builder::params::configfile:
    ensure  => file,
    content => template('jenkins_job_builder/etc/jenkins_jobs/jenkins_jobs.ini.erb'),
    notify  => Exec['jenkins-job-update'],
    require => File[$jenkins_job_builder::params::basedir],
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
