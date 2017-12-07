class snmp::config (
    $package_name          = 'net-snmp',
    $trapsink              = 'localhost',
    $com2secs,
    $vacm_group,
    $vacm_access,
    $view,
    $extend,
    $exec,
    $sh,
    $smuxpeer,
    $proxy,
    $mibs_dirs,
    $mibs_files,
    $mibs,
    $mib_errors,
    $log_timestamp,
    $extra_config_section,
)    {
    
         file {'/etc/snmp/snmp.conf':
            ensure => file,
            content => template('snmp/snmp.conf.erb'),
        }

        file { '/etc/snmp/snmpd.conf':
            ensure  => file,
            content => template('snmp/snmpd.conf.erb'),
        }
}  


 }
