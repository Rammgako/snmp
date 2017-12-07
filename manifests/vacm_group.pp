define snmp::vacm_group (

    String $group_name    = $title,
    String $sec_model     = '',
    String $sec_name      = '',

) {
    concat::fragment{"snmp_vacm_group_{$group_name}":
        target  => $::snmp::config,
        content => template('snmp/snmpd.conf.erb'),
    }
}
