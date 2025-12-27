#!pwsh -ExecutionPolicy Bypass

$repository = ".vscode"
$cursor = Join-Path "$env:APPDATA" "Cursor" "User"
$settings = "settings.json"

$paths = [PSCustomObject]@{
  extensions = Join-Path $repository "extensions.json"
  settings = [PSCustomObject]@{
    source = Join-Path $repository $settings
    destination = Join-Path $cursor $settings
  }
  snippets = [PSCustomObject]@{
    source = Join-Path $repository "global.code-snippets"
    destination = Join-Path $cursor "snippets"
  }
}

function Install-Extensions {
  param([string] $source)

  $extensions = (Get-Content $source | ConvertFrom-Json).recommendations
  $total = $extensions.Count
  $current = 0

  foreach ($extension in $extensions) {
    $current++
    
    Write-Progress -Activity "Extensions" -Status "$current/$total" -PercentComplete (($current / $total) * 100)

    $output = cursor --install-extension $extension --force 2>&1 | Out-String

    if (!($output -match "is already installed")) {
      Write-Host $output
    }
  }

  Write-Progress -Activity "Extensions" -Completed
}

function Install-Settings {
  param([string] $source, [string] $destination)

  Copy-Item $source $destination -Verbose
}

function Install-Snippets {
  param([string] $source, [string] $destination)

  Copy-Item $source $destination -Verbose
}

Install-Extensions $paths.extensions
Install-Settings $paths.settings.source $paths.settings.destination
Install-Snippets $paths.snippets.source $paths.snippets.destination
