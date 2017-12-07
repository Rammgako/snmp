define snmp::extra_config_section (
    String $comment = $title,
    Variant[Array,Hash] $config_entries = {},
) {
    concat::fragment{"snmp_extra_config_section_${comment}":
        target => $::snmp::config,
        content => template('snmp/snmpd.conf.erb'),
    }
}
