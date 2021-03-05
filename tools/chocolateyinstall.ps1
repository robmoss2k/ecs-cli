$ErrorActionPreference = 'Stop'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url = 'https://amazon-ecs-cli.s3.amazonaws.com/ecs-cli-windows-amd64-latest.exe'
$checksum = "062F6E642F80A3073B8FAFA3F0A865C29FBC31C09BB71C0A8F18C8427DA434C4"
$packageArgs = @{
  packageName  = $env:ChocolateyPackageName
  Url          = $url
  Checksum     = $checksum
  checksumType = 'sha256'
  FileFullPath = Join-Path $toolsDir "$($env:ChocolateyPackageName).exe"
}
Get-ChocolateyWebFile @packageArgs
