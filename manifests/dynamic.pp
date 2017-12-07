#For Dynamically Loadable Modules
define snmp::dlmod (
    String $name = $title,
    String $path = '',
) { 
    concat::fragment{"snmp_dlmod_{$name}":
        target => $::snmp::config,
        content => template('snmp/snmpd.conf.erb'),
    }
}
#
#Proxy support
define snmp::proxy (
    String $params = '',
    String $context_name = $title,
    String $host   = '',
    String $oid    = '',
) {
    concat ::fragment{"snmp_proxy_{$context_name}":
        target  => $::snmp::config,
        content => template('snmp/snmpd.conf.erb'),
    }
}

define snmp::smuxpeer (
    String $peer_oid = '',
    String $pass = '',
) {
    concat::fragment{"snmp_smuxpeer_{$peer_oid}":
        target  => $snmp::config,
        content => template('snmp/snmpd.conf.erb'),
    }
}
