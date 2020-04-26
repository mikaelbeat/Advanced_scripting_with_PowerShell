
clear

# Create certificate
New-SelfSignedCertificateEx -Subject "CN=Test code signing" -EKU "code signing"
    -KeySpec "Signature" -KeyUsage "DigitalSignature" -FriendlyName "Test code signing"
    -NotAfter $([datetime]::Now.AddYears(10))

# Location of created certificate
# Location %APPDATA%\Microsoft\SystemCertificates\My\Certificates


# Get certificate
$cert = (dir cert:currentuser\my\ -CodeSigningCert)


# Run script using certificate
Set-AuthenticodeSignature "C:\Demo.ps1" $cert



New-SelfSignedCertificate –DnsName OM19154909 -CertStoreLocation “cert:\LocalMachine\My”


Get-ExecutionPolicy


Set-ExecutionPolicy AllSigned
Set-ExecutionPolicy Unrestricted




New-SelfSignedCertificate -CertStoreLocation cert:\localmachine\my -dnsname "KEMU_PDF_Performance"
$pwd = ConvertTo-SecureString -String "ColdSteel" -Force -AsPlainText


$cert=(dir cert:currentuser\my\ -CodeSigningCert)$cert | Get-Member$cert | select *Set-AuthenticodeSignature 'C:\PowerShell\section5\*' $cert











