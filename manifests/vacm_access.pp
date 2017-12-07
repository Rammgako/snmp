define snmp::vacm_access (

    String $group_name  = $title,
    String $context     = '',
    String $level       = '',
    String $prefix      = '',
    String $read        = '',
    String $write       = '',
    String $notify	= '',

) {
    concat::fragment{"snmp_vacm_access_{$group_name}":
        target  => $::snmp::config,
        content => template('snmp/snmpd.conf.erb'),
    }
}
