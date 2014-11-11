# == Class: user
#
# This reads hiera information to create user resources.
#
# === Parameters
#
# See https://docs.puppetlabs.com/references/latest/type.html#user
#
# === Variables
#
# === Examples
#
#  class { ::user: }
#
# === Authors
#
# Kimo Rosenbaum <kimor79@yahoo.com>
#
# === Copyright
#
# Copyright 2014 Kimo Rosenbaum
#
class user (
  $use_pe = false,
) {

  $defaults = hiera_hash('user::defaults', {})

  $users = hiera_hash('user::user', {})

  $rtype = $use_pe ? {
    true    => 'user::pe_user',
    default => 'user::user',
  }

  if $users {
    validate_hash($users)
    create_resources($rtype, $users, $defaults)
  }
}
