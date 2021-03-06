<#
.SYNOPSIS
Invokes the teardown of routing properties from app config.

.DESCRIPTION
Prior to running this script ensure you are authenticated against Azure and have the desired subscription set.

.EXAMPLE
.\TearDown-105-RoutingProperties-AppConfig.ps1
#>

$params = Get-Content -Path $PSScriptRoot\routingproperties.appcfg.dev.psparameters.json -Raw | ConvertFrom-Json

& $PSScriptRoot\Remove-RoutingProperties-AppConfig.ps1 -configStoreName $params.configStoreName -key $params.configKey -label $params.configLabel

