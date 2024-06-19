$hookUrl = "https://discord.com/api/webhooks/1250354460669251644/Ul6yBVr6V1AHHomvLgWrbCnofLaheVPtAfMOhmB2owABtpg4OaNarlzq8ddFySU4ag9l"

$content = @"
Balls
"@

$payload = [PSCustomObject]@{
    content = $content
}

$params = @{
    Uri = $hookUrl
    Method = 'POST'
    Body = ($Payload | ConvertTo-Json)
    ContentType = 'application/json'
}
        
Invoke-RestMethod @params