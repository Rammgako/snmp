define snmp::view (
    String $view_name = $title,
    String $include   = '',
    String $subtree   = '',
) {
    concat::fragment{"snmp_view_{$view_name}":
        target => $::snmp::config,
        content => template('snmp/snmpd.conf.erb'),
    }
}

