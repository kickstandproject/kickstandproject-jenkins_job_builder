# == Class: jenkins_job_builder::client::install
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
class jenkins_job_builder::client::install {
  package { $jenkins_job_builder::params::packagename:
    ensure   => $jenkins_job_builder::client::package_real['ensure'],
    provider => $jenkins_job_builder::client::package_real['provider'],
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
