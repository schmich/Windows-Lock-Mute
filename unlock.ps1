. ".\audio.ps1"

$muted = Get-Content ".\muted"
[Audio]::Mute = [boolean]::Parse($muted)
