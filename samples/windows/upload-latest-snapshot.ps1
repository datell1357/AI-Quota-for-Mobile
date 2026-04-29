$BaseUrl = $env:AI_USAGE_SYNC_BASE_URL
$Uid = $env:AI_USAGE_SYNC_UID
$UploadToken = $env:AI_USAGE_SYNC_UPLOAD_TOKEN

if (-not $BaseUrl -or -not $Uid -or -not $UploadToken) {
  throw "Set AI_USAGE_SYNC_BASE_URL, AI_USAGE_SYNC_UID, and AI_USAGE_SYNC_UPLOAD_TOKEN first."
}

$Body = Get-Content -Raw -Path "$PSScriptRoot\upload-latest-snapshot.json"

Invoke-RestMethod `
  -Method Post `
  -Uri "$BaseUrl/uploadLatestSnapshot" `
  -Headers @{
    "Authorization" = "Bearer $UploadToken"
    "x-ai-usage-uid" = $Uid
  } `
  -ContentType "application/json" `
  -Body $Body

