
clear

# Create certificate
New-SelfSignedCertificate -Subject "CN=Test Code Signing" -EKU "Code signing"
    -KeySpec "Signature" -KeyUsage "DigitalSignature" -FriendlyName "Test code signing"
    -NotAfter $([datetime]::Now.AddYears(5))

# Location of created certificate
# Location %APPDATA%\Microsoft\SystemCertificates\My\Certificates


# Get certificate
$cert = (dir cert:currentuser\my\ -CodeSigningCert)


# Run script using certificate
Set-AuthenticodeSignature "C:\Demo.ps1" $cert



New-SelfSignedCertificate –DnsName OM19154909 -CertStoreLocation “cert:\LocalMachine\My”