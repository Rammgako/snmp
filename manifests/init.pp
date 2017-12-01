class snmp (
    String $package_name                     = 'net-snmp',
    String $trapsink                         = $snmp::config::trapsink, #for snnmpd.conf
    Optional[Hash] $com2secs                 = $snmp::config::com2secs,
    Optional[Hash] $vacm_group                    = $snmp::config::vacm_group
    String $sec_group                        = $snmp::config::sec_group, #for snnmpd.conf
    String $sec_model                        = $snmp::config::sec_model,#for snnmpd.conf
    Array[String] $snmpagent                 = $snmp::config::snmpagent, #listening address and port
    Array[String] $service_name              = ['snmpd'],
    Array[String] $additional_packages       = $snmp::config::additional_packages,
    Array[String] $mibs_dirs                 = $snmp::config::mibs_dirs,
    Array[String] $mibs_files                = $snmp::config::mibs_files,
    Array[String] $mibs                      = $snmp::config::mibs,
    Any $port                                = default,
    Any $version                             = '3',
    Any $mib_errors                          = 'yes',
    Any $log_timestamp                       = 'yes',
    Optional[Hash]    $extra_config_sections = {},
)   {



   }

