$hypervisor = Get-WindowsOptionalFeature -FeatureName HypervisorPlatform -Online
$enablehyper = Enable-WindowsOptionalFeature -Online -FeatureName HypervisorPlatform -All

if ($hypervisor.State -eq "Disable") {
        $enablehyper
        Restart-Computer
}
        else {
                write-host("Already Enable")
}
