clear


$data_location = ""
$Output = ""

#Test-Path $data_location\KT_jako_1.dat

Copy-Item -Path $data_location\KT_jako_1.dat -Destination $Output

$start_time = Get-Date
$stopwatch = [system.diagnostics.stopwatch]::StartNew()

while (!(Test-Path $file_location\file.txt)) { 
    Start-Sleep 1 
    Write-Output "Waiting for the file to appear"
}

$stopwatch.Stop()
$totalTime =  [math]::Round($stopwatch.Elapsed.TotalSeconds,0)

Write-Output "$start_time --- $totalTime seconds to for PDF file." | Out-File Log.txt -Append
