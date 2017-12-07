class snmp (
    String $package_name                     = 'net-snmp',
    String $trapsink                         = $snmp::config::trapsink,
    Optional[Hash] $com2secs                 = $snmp::config::com2secs,               
    Optional[Hash] $vacm_group               = $snmp::config::vacm_group,
    Optional[Hash] $vacm_access              = $snmp::config::vacm_access,
    Array[String] $snmpagent,
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
)    {

