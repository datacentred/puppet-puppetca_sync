# == Class: puppetcrl_sync::params
#
# A set of default parameters
#
class puppetcrl_sync::params {

  if versioncmp($::puppetversion, '4.0.0') >= 0 {
    $location = '/etc/puppetlabs/puppet/ssl/crl.pem'
    $target   = '/etc/puppetlabs/puppet/ssl/crl.pem'
  } else {
    $location = '/var/lib/puppet/ssl/crl.pem'
    $target   = '/var/lib/puppet/ssl/crl.pem'
  }
  $owner    = 'puppet'
  $group    = 'puppet'
  $mode     = '0644'

}
