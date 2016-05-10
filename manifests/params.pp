# == Class: puppetcrl_sync::params
#
# A set of default parameters
#
class puppetcrl_sync::params {

  $location = '/var/lib/puppet/ssl/crl.pem'
  $target   = '/var/lib/puppet/ssl/crl.pem'
  $owner    = 'puppet'
  $group    = 'puppet'
  $mode     = '0644'

}
