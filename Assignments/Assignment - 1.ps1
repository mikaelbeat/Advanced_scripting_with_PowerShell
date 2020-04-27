
Set-Variable [int]interest -Option Constant -Value 1.2
[validaterange(1, 100000)][int]$start_amount = Read-Host "Enter starting amount"
[validaterange(1, 10)][int]$years = Read-Host "How many years"

$days = 365 * $years
$calculated_interest = ($start_amount / 100) * $interest
$interest_for_days = $calculated_interest * $days
$final_amount_with_interest = $start_amount + $interest_for_days

Write-Output "Starting amount was $start_amount and interest $interest% was calculated
              for $years years.
              Final amount is $final_amount_with_interest"
