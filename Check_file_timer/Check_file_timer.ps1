
clear

$file_location = "D:\Git\github\Advanced_scripting_with_PowerShell\"

$start_time = Get-Date
$stopwatch = [system.diagnostics.stopwatch]::StartNew()

while (!(Test-Path $file_location\Kissa.txt)) { 
    Start-Sleep 1 
    Write-Output "Waiting for the file to appear"
}

$stopwatch.Stop()
$totalTime =  [math]::Round($stopwatch.Elapsed.TotalSeconds,0)

Write-Output "$start_time --- $totalTime seconds to for PDF file." | Out-File Log.txt -Append