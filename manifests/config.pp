class snmp::config (
    $config                = $snmp::config
    $mibs_dirs             = $snmp::mibs_dirs,
    $mibs_files            = $snmp::mibs_files,
    $mibs                  = $snmp::mibs,
    $mib_errors            = $snmp::mib_errors,
    $log_timestamp         = $snmp::log_timestamp,
    $extra_config_sections = $snmp::extra_config_sections,
)   inherits snmp {
        
        file {'/etc/snmp/snmp.conf':
            ensure => present,
            content => template('snmp/snmp.header.conf.erb')
        }
