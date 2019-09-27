Import-Module posh-git
#Import-Module PSReadLine
Import-Module Get-ChildItemColor

# Change color for directories to Blue
$GetChildItemColorTable.File['Directory'] = "Blue"

# Change color for executables to Green
ForEach ($Exe in $GetChildItemColorExtensions.ExecutableList) {
    $GetChildItemColorTable.File[$Exe] = "Green"
}

$foregroundColor = 'white'
$time = Get-Date
$psVersion= $host.Version.Major
$curUser= (Get-ChildItem Env:\USERNAME).Value
$curComp= (Get-ChildItem Env:\COMPUTERNAME).Value
$block = @"
 

__________                           _________.__           .__  .__   
\______   \______  _  __ ___________/   _____/|  |__   ____ |  | |  |  
 |     ___/  _ \ \/ \/ // __ \_  __ \_____  \ |  |  \_/ __ \|  | |  |  
 |    |  (  <_> )     /\  ___/|  | \/        \|   Y  \  ___/|  |_|  |__
 |____|   \____/ \/\_/  \___  >__| /_______  /|___|  /\___  >____/____/
                            \/             \/      \/     \/           

 
"@
 
Write-Host $block -ForegroundColor Red
Write-Host "Greetings, $curUser!" -foregroundColor $foregroundColor
Write-Host "It is: $($time.ToLongDateString())"
Write-Host "You're running PowerShell version: $psVersion" -foregroundColor Green
Write-Host "Your computer name is: $curComp" -foregroundColor Green
Write-Host "Happy scripting!" `n