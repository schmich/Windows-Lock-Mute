. ".\audio.ps1"
. ".\display.ps1"

$muted = [Audio]::Mute
Out-File -FilePath ".\muted" -InputObject $muted
[Audio]::Mute = $true

Start-Sleep -s 5
[Display]::Sleep()
