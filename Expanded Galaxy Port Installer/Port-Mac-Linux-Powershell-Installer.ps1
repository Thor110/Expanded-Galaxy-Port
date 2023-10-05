param (
    [string]$KOTOR1Path = "",
    [string]$TSLPath = ""
)

# Initialize empty hashtable to store KOTOR paths
$KOTORPaths = @{}

function Check-RegKey {
    param([string]$path)
    return (Get-ItemProperty -Path $path -Name 'InstallLocation' -ErrorAction SilentlyContinue).InstallLocation
}

function Check-Folder {
    param([string]$path)
    return (Test-Path -Path "$path\chitin.key" -ErrorAction SilentlyContinue)
}

function Process-Choice {
    param([string]$title, [array]$regOptions, [array]$pathOptions, [string]$cmdlinePath)

    $allOptions = @()

    $regOptions | ForEach-Object {
        $allOptions += (Check-RegKey -path $_)
    }

    $pathOptions | ForEach-Object {
        $allOptions += $_
    }

    if ($cmdlinePath) {
        Write-Host "Command-line argument detected. Using path: $cmdlinePath"
        $KOTORPaths[$title] = $cmdlinePath
        if (Check-Folder -path $cmdlinePath) {
            Write-Host "chitin.key found for $cmdlinePath"
        } else {
            Write-Host "ERROR! chitin.key not found at " + $cmdlinePath
            exit 1
        }
        return
    }

    # Display choices to the user
    $index = 1
    $allOptions | ForEach-Object {
        $found = if (Check-Folder -path $_) { "" } else { " (NOT FOUND)" }
        Write-Host "[$index] $title - $_$found"
        $index++
    }
    Write-Host "[$index] $title - Manual"

    # Capture user input
    $choice = Read-Host "Please choose an option [1-$index]"

    $path = ""
    if ($choice -eq $index) {
        $path = Read-Host "Please enter your $title directory"
    } else {
        $path = $allOptions[$choice - 1]
    }

    if (-not $path -or -not (Test-Path $path -ErrorAction SilentlyContinue)) {
        Write-Host "Path: '$path' not found!"
        Process-Choice -title $title -regOptions $regOptions -pathOptions $pathOptions -cmdlinePath $cmdlinePath
    }

    # Store the path
    $KOTORPaths[$title] = $path

    Write-Host "User chose: $path"
    Write-Host "Check for chitin.key - $(if (Check-Folder -path $path) {'success'} else {'failure'})"
}

# Detect Operating System
if ([Environment]::OSVersion.Platform -eq "Win32NT") {
    $os = "Windows"
} elseif (Test-Path "/System/Library" -ErrorAction SilentlyContinue) { 
    # This path is specific to macOS
    $os = "Darwin"
} else {
    # Assuming Linux if it's not Windows or macOS
    $os = "Linux"
}

# Set up path choices based on OS
$KOTOR1RegOptions = @(
    'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 32370',
    'HKLM:\SOFTWARE\GOG.com\Games\1207666283',
    'HKLM:\SOFTWARE\WOW6432Node\BioWare\SW\KOTOR',
    'HKLM:\SOFTWARE\BioWare\SW\KOTOR'
)

$KOTOR1PathOptions = switch ($os) {
    "Windows" {
        @(
            "C:\Program Files\Steam\steamapps\common\swkotor",
            "C:\Program Files (x86)\Steam\steamapps\common\swkotor",
            "C:\Program Files\LucasArts\SWKotOR",
            "C:\Program Files (x86)\LucasArts\SWKotOR",
            "C:\GOG Games\Star Wars - KotOR"
        )
    }
    "Darwin" {
        @(
            "~/Library/Application Support/Steam/steamapps/common/swkotor/Knights of the Old Republic.app/Contents/Assets"
        )
    }
    "Linux" {
        @(
            "~/.local/share/Steam/common/SteamApps/swkotor",
            "~/.local/share/Steam/common/steamapps/swkotor",
            "~/.local/share/Steam/common/swkotor"
        )
    }
}

$KOTOR2RegOptions = @(
    'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 208580',
    'HKLM:\SOFTWARE\GOG.com\Games\1421404581',
    'HKLM:\SOFTWARE\WOW6432Node\LucasArts\KotOR2',
    'HKLM:\SOFTWARE\LucasArts\KotOR2'
)

$KOTOR2PathOptions = switch ($os) {
    "Windows" {
        @(
            "C:\Program Files\Steam\steamapps\common\Knights of the Old Republic II",
            "C:\Program Files (x86)\Steam\steamapps\common\Knights of the Old Republic II",
            "C:\Program Files\LucasArts\SWKotOR2",
            "C:\Program Files (x86)\LucasArts\SWKotOR2",
            "C:\GOG Games\Star Wars - KotOR2"
        )
    }
    "Darwin" {
        @(
            "~/Library/Application Support/Steam/steamapps/common/Knights of the Old Republic II/Knights of the Old Republic II.app/Contents/Assets"
        )
    }
    "Linux" {
        @(
            "~/.local/share/Steam/common/SteamApps/Knights of the Old Republic II",
            "~/.local/share/Steam/common/steamapps/Knights of the Old Republic II",
            "~/.local/share/Steam/common/Knights of the Old Republic II"
        )
    }
}

Process-Choice -title "KOTOR1" -regOptions $KOTOR1RegOptions -pathOptions $KOTOR1PathOptions -cmdlinePath $KOTOR1Path
Process-Choice -title "TSL" -regOptions $KOTOR2RegOptions -pathOptions $KOTOR2PathOptions -cmdlinePath $TSLPath

# Use the paths stored in $KOTORPaths for the rest of your script
Write-Host "`nStored Paths:"
$KOTORPaths.Keys | ForEach-Object { Write-Host "$_ : $($KOTORPaths[$_])" }

Read-Host "Press any key to start the install."
Write-Host "Installing Expanded Galaxy Project Port"

try {
    
    Rename-Item -Path "$($KOTORPaths['TSL'])\StreamMusic\mus_a_503.wav" -NewName "mus_a_503.wav.main" -ErrorAction Stop
    Rename-Item -Path "$($KOTORPaths['TSL'])\StreamMusic\mus_sion.wav" -NewName "mus_sion.wav.main" -ErrorAction Stop
    
    Copy-Item -Path "$($KOTORPaths['KOTOR1'])\streammusic\mus_theme_cult.wav" -Destination "$($KOTORPaths['TSL'])\streammusic\mus_sion.wav" -Force -ErrorAction Stop

    Get-Content "tslpatchdata\lips-file-list.txt" | ForEach-Object { Copy-Item -Path "$($KOTORPaths['KOTOR1'])\lips\$_" -Destination "$($KOTORPaths['TSL'])\lips\$(Split-Path $_ -Leaf)" -Force -ErrorAction Stop }
    Get-Content "tslpatchdata\movies-file-list.txt" | ForEach-Object { Copy-Item -Path "$($KOTORPaths['KOTOR1'])\movies\$_" -Destination "$($KOTORPaths['TSL'])\movies\$(Split-Path $_ -Leaf)" -Force -ErrorAction Stop }
    Get-Content "tslpatchdata\streammusic-file-list.txt" | ForEach-Object { Copy-Item -Path "$($KOTORPaths['KOTOR1'])\streammusic\$_" -Destination "$($KOTORPaths['TSL'])\streammusic\$(Split-Path $_ -Leaf)" -Force -ErrorAction Stop }
    Get-Content "tslpatchdata\streamsounds-file-list.txt" | ForEach-Object { Copy-Item -Path "$($KOTORPaths['KOTOR1'])\streamsounds\$_" -Destination "$($KOTORPaths['TSL'])\streamsounds\$(Split-Path $_ -Leaf)" -Force -ErrorAction Stop }
    Get-Content "tslpatchdata\streamwaves-file-list.txt" | ForEach-Object { Copy-Item -Path "$($KOTORPaths['KOTOR1'])\streamwaves\$_" -Destination "$($KOTORPaths['TSL'])\streamvoice\$(Split-Path $_ -Leaf)" -Force -ErrorAction Stop }
    
    Get-Content "tslpatchdata\missing-file-list.txt" | ForEach-Object { Copy-Item -Path "source\template\$_" -Destination "$($KOTORPaths['TSL'])\Override\$_" -Force -ErrorAction Stop }
    
    Rename-Item -Path "$($KOTORPaths['TSL'])\movies\ObsidianEnt.bik" -NewName "ObsidianEnt.bik.main" -ErrorAction Stop
    
    Rename-Item -Path "$($KOTORPaths['TSL'])\lips\001EBO_loc.mod" -NewName "001EBO_loc.mod.main" -ErrorAction Stop
    Rename-Item -Path "$($KOTORPaths['TSL'])\Modules\001ebo.mod" -NewName "001ebo.mod.main" -ErrorAction Stop
    
    Get-Content "tslpatchdata\port-file-list.txt" | ForEach-Object { Rename-Item -Path "$($KOTORPaths['TSL'])\Override\$_" -NewName "$_.main" -ErrorAction Stop }
    
    Copy-Item -Path "$($KOTORPaths['KOTOR1'])\movies\biologo.bik" -Destination "$($KOTORPaths['TSL'])\movies\ObsidianEnt.bik" -Force -ErrorAction Stop
    Copy-Item -Path "$($KOTORPaths['KOTOR1'])\lips\end_m01aa_loc.mod" -Destination "$($KOTORPaths['TSL'])\lips\001EBO_loc.mod" -Force -ErrorAction Stop
    
    Copy-Item -Path "tslpatchdata\port-file-list.txt" -Destination "$($KOTORPaths['TSL'])\port-file-list.txt" -Force -ErrorAction Stop
    Copy-Item -Path "tslpatchdata\launcher.bat" -Destination "$($KOTORPaths['TSL'])\launcher.bat" -Force -ErrorAction Stop
    
    Copy-Item -Path "port-patch-notes.rtf" -Destination "$($KOTORPaths['TSL'])\port-patch-notes.rtf" -Force -ErrorAction Stop
    Copy-Item -Path "port-readme.rtf" -Destination "$($KOTORPaths['TSL'])\port-readme.rtf" -Force -ErrorAction Stop
    
    Copy-Item -Path "$($KOTORPaths['TSL'])\dialog.tlk" -Destination "$($KOTORPaths['TSL'])\dialog.tlk.main" -Force -ErrorAction Stop
    
    if ($os -eq "Linux") {
        & 'tslpatchdata\pykotorcli_linux' "$($KOTORPaths['TSL'])" "$PWD"
    } elseif ($os -eq "Darwin") {  # Darwin is the identifier for macOS in .NET (which PowerShell is based on)
        & 'tslpatchdata\pykotorcli_mac' "$($KOTORPaths['TSL'])" "$PWD"
    } elseif ($os -eq "Windows") {  # Darwin is the identifier for macOS in .NET (which PowerShell is based on)
        & 'tslpatchdata\pykotorcli.exe' "$($KOTORPaths['TSL'])" "$PWD"
    }

    
    Write-Host "Star Wars : Knights of the Old Republic II Expanded Galaxy Port Project Installation Completed!"
} catch {
    Write-Host "An error occurred: $_"
    exit 2
}
Read-Host "Press Enter to continue..."