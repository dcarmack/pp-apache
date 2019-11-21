# @summary 
#   Operatingg sustem-related variables
#
# A description of what this class does
#
# @example
#   include apache::params
class apache::params {
  $install_ensure = present,
  case $::osfamily {
    'RedHat': {
      $install_name = 'httpd'
    }
    'Debian': {
      $install_name = 'apache2'
    }
  }
}
