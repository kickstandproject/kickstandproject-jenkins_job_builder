# == Class: jenkins_job_builder::client::command
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
class jenkins_job_builder::client::command {
  exec { 'jenkins-jobs-update':
    command     =>
      "jenkins-jobs update ${jenkins_job_builder::params::configdir}",
    refreshonly => true,
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
