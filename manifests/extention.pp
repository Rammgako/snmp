define snmp::extend (
    String $name = $title,
    String $prog = '',
    String $args = '',
) {
    concat::fragment{"snmp_extend_{$name}":
        target => $::snmp::config,
        content => template("snmp/snmpd.conf.erb'),
    }
}

define snmp::exec (
    String $exec_name = $title,
    String $exec_prog = '',
    string $exec_args = '',
) {
    concat::fragment{"snmp_exec{$exec_name}":
        target => $::snmp::config,
        content => template('snmp/snmpd.conf.erb'),
    }
}

define snmp::sh (
    String $sh_name = $title,
    String $sh_prog = '',
    String $sh_args = '',
) {
    concat::fragment{"snmp_sh_{$sh_name}":
        target => $::snmp::config,
        content => template('snmp/snmpd.conf.erb'),
    }
}
