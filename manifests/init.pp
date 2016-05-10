# == Class: puppetcrl_sync
#
# A Puppet module for distributing the Puppet CA CRL to other hosts
#
# === Parameters
#
# [*crl_location*]
#   String.  Full path to the puppet CA CRL file
# [*crl_target*]
#   String.  Full path to the target location for the CRL file
# [*crl_owner*]
#   String. Owner for the CRL file in the target location
# [*crl_group*]
#   String. Group for the CRL file in the target location
# [*crl_mode*]
#   Integer. Octal mode for the CRL file in the target location
#
#
class puppetcrl_sync (
  $crl_location = $puppetcrl_sync::params::crl_location,
  $crl_target   = $puppetcrl_sync::params::crl_target,
  $crl_owner    = $puppetcrl_sync::params::crl_owner,
  $crl_group    = $puppetcrl_sync::params::crl_group,
  $crl_mode     = $puppetcrl_sync::params::crl_mode,
) inherits ::puppetcrl_sync::params
{

  validate_string($crl_location)
  validate_string($crl_target)
  validate_string($crl_owner)
  validate_string($crl_group)
  validate_integer($crl_mode)

  file { $crl_target:
    path    => $crl_target,
    content => cat_file($crl_location),
    mode    => $mode,
    owner   => $owner,
    group   => $group,
  }
  
}
