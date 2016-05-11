# == Class: puppetcrl_sync
#
# A Puppet module for distributing the Puppet CA CRL to other hosts
#
# === Parameters
#
# [*location*]
#   String.  Full path to the puppet CA CRL file
# [*target*]
#   String.  Full path to the target location for the CRL file
# [*owner*]
#   String. Owner for the CRL file in the target location
# [*group*]
#   String. Group for the CRL file in the target location
# [*mode*]
#   Integer. Octal mode for the CRL file in the target location
#
#
class puppetcrl_sync (
  $location = $puppetcrl_sync::params::location,
  $target   = $puppetcrl_sync::params::target,
  $owner    = $puppetcrl_sync::params::owner,
  $group    = $puppetcrl_sync::params::group,
  $mode     = $puppetcrl_sync::params::mode,
) inherits ::puppetcrl_sync::params
{

  validate_string($location)
  validate_string($target)
  validate_string($owner)
  validate_string($group)
  validate_string($mode)

  file { $target:
    path    => $target,
    content => read_file($location),
    mode    => $mode,
    owner   => $owner,
    group   => $group,
  }
  
}
