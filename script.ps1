param(

    [string[]] $workspaceIds

)

$mma = New-Object -ComObject 'AgentConfigManager.MgmtSvcCfg'


foreach ($value in $workspaceIds) {
    
    $mma.RemoveCloudWorkspace($workspaceId)

}

$mma.ReloadConfiguration()

exit 0;


