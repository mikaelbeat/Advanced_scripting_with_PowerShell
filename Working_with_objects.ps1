

# Delete all files which are older that 10 day

$directory = ""
$days = 10

Get-ChildItem -File - Recurse $directory |
    Where-Object {$_.LastWriteTime -lt (Get-Date).AddDays(-$days)} | % {
    $._fullname | del -Force -WhatIf
    }