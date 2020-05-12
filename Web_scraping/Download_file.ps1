
clear

Set-Location "D:\Git\github\Advanced_scripting_with_PowerShell\Web_scraping"

$url = "https://en.wikipedia.org/wiki/PlayStation_4#/media/File:PS4-Console-wDS4.jpg"


# Method - 1
    $web_client = New-Object System.Net.WebClient
    $web_client.DownloadFile($url, "D:\Git\github\Advanced_scripting_with_PowerShell\Web_scraping\Image.jpg")



# Method - 2
    Invoke-WebRequest $url -OutFile "Image2.jpg"