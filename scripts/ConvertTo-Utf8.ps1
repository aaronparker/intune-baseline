$Utf8NoBomEncoding = New-Object -TypeName System.Text.UTF8Encoding($true)
foreach ($i in Get-ChildItem -Recurse -Include "*.json") {
    $Content = Get-Content -Path $i.FullName
    if ($null -ne $Content) {
        [System.IO.File]::WriteAllLines($i.FullName, $Content, $Utf8NoBomEncoding)
    }
    else {
        Write-Host "No content from: $i"   
    }
}
