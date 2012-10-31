# == Class: jenkins_job_builder::client::init
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
class jenkins_job_builder::client::init {
  include jenkins_job_builder::client::install
  include jenkins_job_builder::client::config
}

# vim:sw=2:ts=2:expandtab:textwidth=79
