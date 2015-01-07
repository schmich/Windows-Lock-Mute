. ".\audio.ps1"

$muted = [Audio]::Mute
Out-File -FilePath ".\muted" -InputObject $muted
[Audio]::Mute = $true
