# Tiny local preview server for the Aidas Prints website. Windows only, no installs.
# Usage:  powershell -NoProfile -ExecutionPolicy Bypass -File .cursor/skills/previewing-the-website/scripts/serve.ps1
# Then open http://localhost:8321/ in the browser. Press Ctrl+C to stop.
param(
  [string]$Root = (Resolve-Path (Join-Path $PSScriptRoot "..\..\..\..")).Path,
  [int]$Port = 8321
)

$listener = New-Object System.Net.HttpListener
$listener.Prefixes.Add("http://localhost:$Port/")
try {
  $listener.Start()
} catch {
  Write-Output "Port $Port is already in use. The preview is probably already running at http://localhost:$Port/"
  exit 0
}
Write-Output "Previewing $Root at http://localhost:$Port/"

$types = @{
  ".html" = "text/html; charset=utf-8"; ".css" = "text/css; charset=utf-8"; ".js" = "text/javascript; charset=utf-8"
  ".svg" = "image/svg+xml"; ".jpg" = "image/jpeg"; ".jpeg" = "image/jpeg"; ".png" = "image/png"
  ".webp" = "image/webp"; ".gif" = "image/gif"; ".ico" = "image/x-icon"
}

while ($listener.IsListening) {
  $ctx = $listener.GetContext()
  $path = [Uri]::UnescapeDataString($ctx.Request.Url.AbsolutePath)
  if ($path -eq "/") { $path = "/index.html" }
  $file = Join-Path $Root ($path -replace "/", "\")
  $res = $ctx.Response
  if ((Test-Path $file -PathType Leaf) -and ($file.StartsWith($Root))) {
    $bytes = [IO.File]::ReadAllBytes($file)
    $ext = [IO.Path]::GetExtension($file).ToLower()
    $res.ContentType = if ($types[$ext]) { $types[$ext] } else { "application/octet-stream" }
    $res.Headers.Add("Cache-Control", "no-store")
    $res.ContentLength64 = $bytes.Length
    $res.OutputStream.Write($bytes, 0, $bytes.Length)
  } else {
    $res.StatusCode = 404
    $msg = [Text.Encoding]::UTF8.GetBytes("Not found: $path")
    $res.OutputStream.Write($msg, 0, $msg.Length)
  }
  $res.Close()
}
