# Class: snmp::install

class snmp::install  {

    package{$::snmp::package_name:
        ensure => present,
    }
  
}
