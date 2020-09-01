$SDDL = "D:(A;;CCLCSWRPWPDTLOCRRC;;;SY)(A;;CCDCLCSWRPWPDTLOCRSDRCWDWO;;;BA)(A;;CCLCSWLOCRRC;;;IU)(A;;CCLCSWLOCRRC;;;SU)"

$var = @{
    Name = "DemoService2"
    BinaryPathName = "C:\WINDOWS\example_service.exe"
    DisplayName = "Demo Service"
    StartupType = "Automatic"
    Description = "This service is vulnerable ."
    SecurityDescriptorSddl = $SDDL
  }
  New-Service @var 
