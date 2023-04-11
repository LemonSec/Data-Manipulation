$inputFile = "C:\users\downloads\shodan\2.json"
$outputFile = "C:\users\downloads\shodan\output.txt"

Get-Content $inputFile | ForEach-Object {
    $object = $_ | ConvertFrom-Json
    $ipStr = $object.ip_str
    $port = $object.port
    $output = "$ipStr`:$port"
    $output | Out-File -FilePath $outputFile -Append
}