$data = Get-Content -Path "memories_history.json" | ConvertFrom-Json

if ((Test-Path -Path "memories") -eq $false) {
    New-Item -Path "memories" -ItemType Directory
}

foreach ($file in $data.'Saved Media') {
    $jsonLink = $file.'Download Link'
    $date = $file.Date.Replace(" UTC", "")
    $RealURI = Invoke-WebRequest -Uri $jsonLink -Method Post -Headers @{"Content-Type" = "application/x-www-form-urlencoded" }
    $RealURI = $RealURI.Content
    $RealURI -match '(?:.)*\/(.*\.\w{3,4})(?:\?)' | Out-Null
    $fileName = $Matches[1]
    Invoke-WebRequest -Uri $RealURI -OutFile "memories\$fileName"
    $DownloadedFile = Get-Item -Path "memories\$fileName"
    $DownloadedFile.CreationTimeUtc = $date
    $DownloadedFile.LastWriteTimeUtc = $date
    Write-Host "Downloaded $fileName"
    exiftool "-AllDates<filemodifydate" $DownloadedFile.FullName
}
