# Class snmp::service
#
# Manages the snmp daemon

class snmp::service {

    service{$::snmp::service_name:
        ensure => running,
        enable => true,
    }

}
