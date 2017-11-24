class snmp::snmp_config (
    $config                = $snmp::config
    $mibs_dirs             = $snmp::mibs_dirs,
    $mibs_files            = $snmp::mibs_files,
    $mibs                  = $snmp::mibs,
    $mib_errors            = $snmp::mib_errors,
    $log_timestamp         = $snmp::log_timestamp,
    $extra_config_sections = 
)   inherits snmp {

    concat{$config:
        ensure => present,
        owner => 'root',
        group => 'root',
        mode => 0640
    }
        
    concat::fragment{'snmp_header':
        target  => $config,
        content => template('snmp/snmp.header.conf.erb'),
        order   => '01',
  }
  
    if $mibs_files {
        create_resources('snmp::mibs_file, $mibs_files')
    }
    
    if $mibs_dirs {
        create_resources('snmp::mibs_dir, $mibs_dirs')
    }
    
    if $mibs {
        create_resources('snmp::mib, $mibs')
    }
