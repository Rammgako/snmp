class snmp (
    String $package_name                     = 'net-snmp',
    String $trapsink                         = $snmp::config::trapsink, #for snnmpd.conf
    Array[String] $sec_names                         = $snmp::config::sec_names, #for snnmpd.conf
    String $source                           = $snmp::config::source,  #for snnmpd.conf
    String $community                        = $snmp::config::comunity, #for snnmpd.conf
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

        file {'/etc/snmp/snmp.conf':
            ensure => file,
            content => template('snmp/snmp.header.conf.erb'),
        }

        file { '/etc/snmp/snmpd.conf':
            ensure  => file,
            content => template('snmp/snmpd.header.conf.erb'),
        }

   }

