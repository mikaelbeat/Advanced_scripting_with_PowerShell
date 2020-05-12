
clear

$html = Invoke-WebRequest -Uri "https://en.wikipedia.org/wiki/PowerShell"
$tables = @($html.ParsedHtml.getElementsByTagName("TABLE"))
$table = $tables[0]
$table.rows[7].cells[1].innerText