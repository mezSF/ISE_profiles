PS C:\Users\Mez.MEZMEDICIMEDIA\Documents\WindowsPowerShell> $cred= get-credential
cmdlet Get-Credential at command pipeline position 1
Supply values for the following parameters:


PS C:\Users\Mez.MEZMEDICIMEDIA\Documents\WindowsPowerShell> Update-LapsADSchema -Confirm -Credential $cred -WhatIf -Verbose
VERBOSE: BeginProcessing started
VERBOSE: Verifying that current machine is AD domain-joined
VERBOSE: Success: current machine is domain-joined to 'MEZMEDICIMEDIA'
VERBOSE: Not running on a domain controller - the current process does not need to be elevated
VERBOSE: Calling DC-locator to locate a DC in the  domain
VERBOSE: DC-locator succeeded:
VERBOSE: Name:DCUno.mezmedicimedia.local Address:\\::eaed:5ff:fe5b:7000 AddressType:1 DomainGuid:510adb92-2bd1-4ade-a4
e1-5eb3e0ef6f21 DomainDnsName:mezmedicimedia.local ForestDnsName:mezmedicimedia.local Flags:0xe007f1fd DcSiteName:Defa
ult-First-Site-Name ClientSiteName:Default-First-Site-Name 
VERBOSE: Binding to domain controller DCUno.mezmedicimedia.local
VERBOSE: Bound LDAP connection to schema FSMO DCUno.mezmedicimedia.local
VERBOSE: Successfully bound to domain controller:
VERBOSE:  DC: DCUno.mezmedicimedia.local
VERBOSE:  DC functional level: 10
VERBOSE:  Domain info:
VERBOSE:    Domain DNS name: mezmedicimedia.local
VERBOSE:    Domain NC: DC=mezmedicimedia,DC=local
VERBOSE:    Domain functional level: 10
VERBOSE:  Forest info:
VERBOSE:    Forest DNS name: mezmedicimedia.local
VERBOSE:    Forest NC: DC=mezmedicimedia,DC=local
VERBOSE:    Config NC: CN=Configuration,DC=mezmedicimedia,DC=local
VERBOSE:    Schema NC: CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local
VERBOSE:    Forest functional level: 10
VERBOSE: BeginProcessing completed
VERBOSE: 
VERBOSE: ProcessRecord started
VERBOSE: Invoking schemaUpdateNow on DC
VERBOSE: Successfully invoked schemaUpdateNow on DC
VERBOSE: 
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-Password,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local'
VERBOSE: Did not find the 'CN=ms-LAPS-Password,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local' schema attribute
 in AD
What if: Adding the 'ms-LAPS-Password' schema attribute to the AD schema.
VERBOSE: ShouldProcess returned false (skipping operation); shouldProcessReason:WhatIf
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-PasswordExpirationTime,CN=Schema,CN=Configuration,DC=mezmedicimed
ia,DC=local'
VERBOSE: Did not find the 'CN=ms-LAPS-PasswordExpirationTime,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local' sc
hema attribute in AD
What if: Adding the 'ms-LAPS-PasswordExpirationTime' schema attribute to the AD schema.
VERBOSE: ShouldProcess returned false (skipping operation); shouldProcessReason:WhatIf
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-EncryptedPassword,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC
=local'
VERBOSE: Did not find the 'CN=ms-LAPS-EncryptedPassword,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local' schema 
attribute in AD
What if: Adding the 'ms-LAPS-EncryptedPassword' schema attribute to the AD schema.
VERBOSE: ShouldProcess returned false (skipping operation); shouldProcessReason:WhatIf
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-EncryptedPasswordHistory,CN=Schema,CN=Configuration,DC=mezmedicim
edia,DC=local'
VERBOSE: Did not find the 'CN=ms-LAPS-EncryptedPasswordHistory,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local' 
schema attribute in AD
What if: Adding the 'ms-LAPS-EncryptedPasswordHistory' schema attribute to the AD schema.
VERBOSE: ShouldProcess returned false (skipping operation); shouldProcessReason:WhatIf
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-EncryptedDSRMPassword,CN=Schema,CN=Configuration,DC=mezmedicimedi
a,DC=local'
VERBOSE: Did not find the 'CN=ms-LAPS-EncryptedDSRMPassword,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local' sch
ema attribute in AD
What if: Adding the 'ms-LAPS-EncryptedDSRMPassword' schema attribute to the AD schema.
VERBOSE: ShouldProcess returned false (skipping operation); shouldProcessReason:WhatIf
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-EncryptedDSRMPasswordHistory,CN=Schema,CN=Configuration,DC=mezmed
icimedia,DC=local'
VERBOSE: Did not find the 'CN=ms-LAPS-EncryptedDSRMPasswordHistory,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=loc
al' schema attribute in AD
What if: Adding the 'ms-LAPS-EncryptedDSRMPasswordHistory' schema attribute to the AD schema.
VERBOSE: ShouldProcess returned false (skipping operation); shouldProcessReason:WhatIf
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-Encrypted-Password-Attributes,CN=Extended-Rights,CN=Configuration
,DC=mezmedicimedia,DC=local'
VERBOSE: Did not find 'CN=ms-LAPS-Encrypted-Password-Attributes,CN=Extended-Rights,CN=Configuration,DC=mezmedicimedia,
DC=local' extended right AD
VERBOSE: Did not find the 'CN=ms-LAPS-Encrypted-Password-Attributes,CN=Extended-Rights,CN=Configuration,DC=mezmedicime
dia,DC=local' extended right in AD
What if: Adding the 'ms-LAPS-Encrypted-Password-Attributes' extended right to AD.
VERBOSE: ShouldProcess returned false (skipping operation); shouldProcessReason:WhatIf
VERBOSE: Querying existing mayContain attribute for the 'CN=computer,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=l
ocal' classSchema
VERBOSE: Issuing LDAP search request for 'CN=computer,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local'
VERBOSE: Got LDAP response for 'CN=computer,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local'
VERBOSE: The 'CN=computer,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local' classSchema has the following mayCont
ains:
VERBOSE:   msSFU30Name
VERBOSE:   nisMapName
VERBOSE:   msSFU30NisDomain
VERBOSE:   msSFU30Aliases
VERBOSE: The 'computer' classSchema is missing the following mayContain: msLAPS-PasswordExpirationTime
VERBOSE: The 'computer' classSchema is missing the following mayContain: msLAPS-Password
VERBOSE: The 'computer' classSchema is missing the following mayContain: msLAPS-EncryptedPassword
VERBOSE: The 'computer' classSchema is missing the following mayContain: msLAPS-EncryptedPasswordHistory
VERBOSE: The 'computer' classSchema is missing the following mayContain: msLAPS-EncryptedDSRMPassword
VERBOSE: The 'computer' classSchema is missing the following mayContain: msLAPS-EncryptedDSRMPasswordHistory
VERBOSE: The 'computer' classSchema is missing 6 out of 6 LAPS mayContains
What if: Updating the mayContain attribute on the 'computer' class schema attribute in the AD schema.
VERBOSE: ShouldProcess returned false (skipping operation); shouldProcessReason:WhatIf
VERBOSE: 
VERBOSE: ProcessRecord completed
VERBOSE: 
VERBOSE: EndProcessing started
VERBOSE: EndProcessing completed
VERBOSE: 

PS C:\Users\Mez.MEZMEDICIMEDIA\Documents\WindowsPowerShell> Update-LapsADSchema -Confirm -Credential $cred -Verbose
VERBOSE: BeginProcessing started
VERBOSE: Verifying that current machine is AD domain-joined
VERBOSE: Success: current machine is domain-joined to 'MEZMEDICIMEDIA'
VERBOSE: Not running on a domain controller - the current process does not need to be elevated
VERBOSE: Calling DC-locator to locate a DC in the  domain
VERBOSE: DC-locator succeeded:
VERBOSE: Name:DCUno.mezmedicimedia.local Address:\\::eaed:5ff:fe5b:7000 AddressType:1 DomainGuid:510adb92-2bd1-4ade-a4
e1-5eb3e0ef6f21 DomainDnsName:mezmedicimedia.local ForestDnsName:mezmedicimedia.local Flags:0xe007f1fd DcSiteName:Defa
ult-First-Site-Name ClientSiteName:Default-First-Site-Name 
VERBOSE: Binding to domain controller DCUno.mezmedicimedia.local
VERBOSE: Bound LDAP connection to schema FSMO DCUno.mezmedicimedia.local
VERBOSE: Successfully bound to domain controller:
VERBOSE:  DC: DCUno.mezmedicimedia.local
VERBOSE:  DC functional level: 10
VERBOSE:  Domain info:
VERBOSE:    Domain DNS name: mezmedicimedia.local
VERBOSE:    Domain NC: DC=mezmedicimedia,DC=local
VERBOSE:    Domain functional level: 10
VERBOSE:  Forest info:
VERBOSE:    Forest DNS name: mezmedicimedia.local
VERBOSE:    Forest NC: DC=mezmedicimedia,DC=local
VERBOSE:    Config NC: CN=Configuration,DC=mezmedicimedia,DC=local
VERBOSE:    Schema NC: CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local
VERBOSE:    Forest functional level: 10
VERBOSE: BeginProcessing completed
VERBOSE: 
VERBOSE: ProcessRecord started
VERBOSE: Invoking schemaUpdateNow on DC
VERBOSE: Successfully invoked schemaUpdateNow on DC
VERBOSE: 
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-Password,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local'
VERBOSE: Did not find the 'CN=ms-LAPS-Password,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local' schema attribute
 in AD
VERBOSE: Adding new schema attribute: 'CN=ms-LAPS-Password,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local'
VERBOSE: Successfully added new schema attribute: 'CN=ms-LAPS-Password,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC
=local'
VERBOSE: 
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-PasswordExpirationTime,CN=Schema,CN=Configuration,DC=mezmedicimed
ia,DC=local'
VERBOSE: Did not find the 'CN=ms-LAPS-PasswordExpirationTime,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local' sc
hema attribute in AD
VERBOSE: Adding new schema attribute: 'CN=ms-LAPS-PasswordExpirationTime,CN=Schema,CN=Configuration,DC=mezmedicimedia,
DC=local'
VERBOSE: Successfully added new schema attribute: 'CN=ms-LAPS-PasswordExpirationTime,CN=Schema,CN=Configuration,DC=mez
medicimedia,DC=local'
VERBOSE: 
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-EncryptedPassword,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC
=local'
VERBOSE: Did not find the 'CN=ms-LAPS-EncryptedPassword,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local' schema 
attribute in AD
VERBOSE: Adding new schema attribute: 'CN=ms-LAPS-EncryptedPassword,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=lo
cal'
VERBOSE: Successfully added new schema attribute: 'CN=ms-LAPS-EncryptedPassword,CN=Schema,CN=Configuration,DC=mezmedic
imedia,DC=local'
VERBOSE: 
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-EncryptedPasswordHistory,CN=Schema,CN=Configuration,DC=mezmedicim
edia,DC=local'
VERBOSE: Did not find the 'CN=ms-LAPS-EncryptedPasswordHistory,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local' 
schema attribute in AD
VERBOSE: Adding new schema attribute: 'CN=ms-LAPS-EncryptedPasswordHistory,CN=Schema,CN=Configuration,DC=mezmedicimedi
a,DC=local'
VERBOSE: Successfully added new schema attribute: 'CN=ms-LAPS-EncryptedPasswordHistory,CN=Schema,CN=Configuration,DC=m
ezmedicimedia,DC=local'
VERBOSE: 
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-EncryptedDSRMPassword,CN=Schema,CN=Configuration,DC=mezmedicimedi
a,DC=local'
VERBOSE: Did not find the 'CN=ms-LAPS-EncryptedDSRMPassword,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local' sch
ema attribute in AD
VERBOSE: Adding new schema attribute: 'CN=ms-LAPS-EncryptedDSRMPassword,CN=Schema,CN=Configuration,DC=mezmedicimedia,D
C=local'
VERBOSE: Successfully added new schema attribute: 'CN=ms-LAPS-EncryptedDSRMPassword,CN=Schema,CN=Configuration,DC=mezm
edicimedia,DC=local'
VERBOSE: 
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-EncryptedDSRMPasswordHistory,CN=Schema,CN=Configuration,DC=mezmed
icimedia,DC=local'
VERBOSE: Did not find the 'CN=ms-LAPS-EncryptedDSRMPasswordHistory,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=loc
al' schema attribute in AD
VERBOSE: Adding new schema attribute: 'CN=ms-LAPS-EncryptedDSRMPasswordHistory,CN=Schema,CN=Configuration,DC=mezmedici
media,DC=local'
VERBOSE: Successfully added new schema attribute: 'CN=ms-LAPS-EncryptedDSRMPasswordHistory,CN=Schema,CN=Configuration,
DC=mezmedicimedia,DC=local'
VERBOSE: 
VERBOSE: Issuing LDAP search request for 'CN=ms-LAPS-Encrypted-Password-Attributes,CN=Extended-Rights,CN=Configuration
,DC=mezmedicimedia,DC=local'
VERBOSE: Did not find 'CN=ms-LAPS-Encrypted-Password-Attributes,CN=Extended-Rights,CN=Configuration,DC=mezmedicimedia,
DC=local' extended right AD
VERBOSE: Did not find the 'CN=ms-LAPS-Encrypted-Password-Attributes,CN=Extended-Rights,CN=Configuration,DC=mezmedicime
dia,DC=local' extended right in AD
VERBOSE: Adding new extended right: 'CN=ms-LAPS-Encrypted-Password-Attributes,CN=Extended-Rights,CN=Configuration,DC=m
ezmedicimedia,DC=local'
VERBOSE: Successfully added new extended right: 'CN=ms-LAPS-Encrypted-Password-Attributes,CN=Extended-Rights,CN=Config
uration,DC=mezmedicimedia,DC=local'
VERBOSE: 
VERBOSE: Invoking schemaUpdateNow on DC
VERBOSE: Successfully invoked schemaUpdateNow on DC
VERBOSE: 
VERBOSE: Querying existing mayContain attribute for the 'CN=computer,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=l
ocal' classSchema
VERBOSE: Issuing LDAP search request for 'CN=computer,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local'
VERBOSE: Got LDAP response for 'CN=computer,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local'
VERBOSE: The 'CN=computer,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local' classSchema has the following mayCont
ains:
VERBOSE:   msSFU30Name
VERBOSE:   nisMapName
VERBOSE:   msSFU30NisDomain
VERBOSE:   msSFU30Aliases
VERBOSE: The 'computer' classSchema is missing the following mayContain: msLAPS-PasswordExpirationTime
VERBOSE: The 'computer' classSchema is missing the following mayContain: msLAPS-Password
VERBOSE: The 'computer' classSchema is missing the following mayContain: msLAPS-EncryptedPassword
VERBOSE: The 'computer' classSchema is missing the following mayContain: msLAPS-EncryptedPasswordHistory
VERBOSE: The 'computer' classSchema is missing the following mayContain: msLAPS-EncryptedDSRMPassword
VERBOSE: The 'computer' classSchema is missing the following mayContain: msLAPS-EncryptedDSRMPasswordHistory
VERBOSE: The 'computer' classSchema is missing 6 out of 6 LAPS mayContains
VERBOSE: Modifying mayContain on: 'CN=computer,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local'
VERBOSE: Successfully modified mayContain on: 'CN=computer,CN=Schema,CN=Configuration,DC=mezmedicimedia,DC=local'
VERBOSE: 
VERBOSE: Invoking schemaUpdateNow on DC
VERBOSE: Successfully invoked schemaUpdateNow on DC
VERBOSE: 
VERBOSE: ProcessRecord completed
VERBOSE: 
VERBOSE: EndProcessing started
VERBOSE: EndProcessing completed
VERBOSE: 
