class snmp (
    String $package_name                     = $snmp::params::package_name,
    String $trapsink                         = $snmp::params::trapsink, #for snnmpd.conf
    String $sec_name                         = $snmp::params::sec_name, #for snnmpd.conf
    String $source                           = $snmp::params::source,  #for snnmpd.conf
    String $community                        = $snmp::params::comunity, #for snnmpd.conf
    String $sec_group                        = $snmp::params::sec_group, #for snnmpd.conf
    String $sec_model                        = $snmp::params::sec_model,#for snnmpd.conf
    Array[String] $snmpagent                 = $snmp::params::snmpagent,
    Array[String] $service_name              = $snmp::params::service_name,
    Array[String] $additional_packages       = $snmp::params::additional_packages,
    Array[String] $mibs_dirs                 = $snmp::params::mibs_dirs,
    Array[String] $mibs_files                = $snmp::params::mibs_files,
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
