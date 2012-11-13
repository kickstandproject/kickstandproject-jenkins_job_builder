# == Class: jenkins_job_builder::client
#
# This class manages the jenkins job builder client
#
# === Examples
#
#  class { 'jenkins_job_builder::client': }
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
class jenkins_job_builder::client(
  $package = {},
  $settings = {},
) {
  $default_package = {
    'ensure' => 'present',
  }
  $package_real = merge($default_package, $package)

  $default_settings = {
    'password' => '',
    'url'      => 'http://localhost',
    'user'     => 'jenkins',
  }
  $settings_real = merge($default_settings, $settings)

  include jenkins_job_builder::params
  include jenkins_job_builder::client::init
}

# vim:sw=2:ts=2:expandtab:textwidth=79
