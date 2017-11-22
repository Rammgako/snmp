class snmp (
    String $package_name                     = $snmp::params::package_name,
    String $service_name                     = $snmp::params::service_name
    Array[String] $service_name              = $snmp::params::service_name,
    Array[String] $additional_packages       = $snmp::params::additional_packages,
    Array[String] $mibs_dir                  = $snmp::params::mibs_dir,
    Array[String] $mibs_file                 = $snmp::params::mibs_file,
    Array[String] $mibs                      = $snmp::params::mibs,
    Any $port                                = $snmp::params::port,
    Any $version                             = $snmp::params::version,
    Any $mib_errors                          = $snmp::params::mib_errors,
    Any $log_timestamp                       = $snmp::params::log_timestamp,
    Optional[Hash]    $extra_config_sections = {},
) inherits ::snmp::params {
  
  anchor{'snmp::begin':}
  -> class{'::snmp::install':}
  -> class{'::snmp::config':}
  ~> class{'::snmp::service':}
  -> anchor{'snmp::end':}

}
