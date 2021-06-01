# Dommänen-Rollen ausgeben
Get-ADDomain domain | Select-Object InfrastructureMaster, RIDMaster, PDCEEmulator

# Forest-Informationen ausgeben
Get-ADForest domain # | Select-Object DomainNamingMaster, SchemaMaster

# Domaincontroller und zugehörige Rollen ausgeben
Get-ADDomainController -Filter * | Select-Object Name, Domain, Forest, OperationMasterRoles

