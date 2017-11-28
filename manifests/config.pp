class snmp::config (
    $package_name          = 'net-snmp'
    $trapsink              = $
    $sec_names              = $
    $source                = $
    $community             = $
    $sec_group
    $sec_model
    $mibs_dirs             = $snmp::mibs_dirs,
    $mibs_files            = $snmp::mibs_files,
    $mibs                  = $snmp::mibs,
    $mib_errors            = $snmp::mib_errors,
    $log_timestamp         = $snmp::log_timestamp,
    $extra_config_sections = $snmp::extra_config_sections,
)   include snmp {


 }