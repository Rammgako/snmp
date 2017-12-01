class snmp::config (
    $package_name          = 'net-snmp',
    $trapsink              = 'localhost'
    $sec_names,
    $source,
    $community,
    $sec_group,
    $sec_model,
    $mibs_dirs,
    $mibs_files,
    $mibs,
    $mib_errors,
    $log_timestamp,
    $extra_config_sections,
)   include snmp {

        file {'/etc/snmp/snmp.conf':
            ensure => file,
            content => template('snmp/snmp.header.conf.erb'),
        }

        file { '/etc/snmp/snmpd.conf':
            ensure  => file,
            content => template('snmp/snmpd.header.conf.erb'),
        }


 }