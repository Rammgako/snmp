# Class snmp::service
#
# Manages the snmp daemon

class snmp::service inherits snmp {

    service{$::snmp::service_name:
        ensure => running,
        enable => true,
    }

}
