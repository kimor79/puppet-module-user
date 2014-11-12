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
class user {

  $defaults = hiera_hash('user::defaults', {})
  $users = hiera_hash('user::user', {})

  if $users {
    validate_hash($users)
    create_resources('user::user', $users, $defaults)
  }

  $pe_defaults = hiera_hash('user::pe_defaults', {})
  $pe_users = hiera_hash('user::pe_user', {})

  if $pe_users {
    validate_hash($pe_users)
    create_resources('user::pe_user', $pe_users, $pe_defaults)
  }
}
