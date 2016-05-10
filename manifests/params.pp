# == Class: puppetcrl_sync::params
#
# A set of default parameters
#
class puppetcrl_sync::params {

  $crl_location = '/var/lib/puppet/ssl/crl.pem'
  $crl_target   = '/var/lib/puppet/ssl/crl.pem'
  $crl_owner    = 'puppet'
  $crl_group    = 'puppet'
  $crl_mode     = '0644'

}
