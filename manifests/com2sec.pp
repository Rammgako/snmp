define snmp::com2secs (

    String $sec_name  = $title,
    Array $source     = [],
    String $community = '',

) {
    concat::fragment{"snmp_com2sec_{$sec_name}":
        target  => $::snmp::config,
        content => template('snmp/snmpd.conf.erb'),
    }
}
