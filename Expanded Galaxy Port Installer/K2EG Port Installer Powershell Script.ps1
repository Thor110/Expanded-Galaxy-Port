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
    return Test-Path -Path "$path\chitin.key"
}

function Process-Choice {
    param([string]$title, [array]$options, [string]$cmdlinePath)

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
    $options | ForEach-Object {
        $found = if (Check-RegKey -path $_) { "" } else { " (NOT FOUND)" }
        Write-Host "[$index] $title - $_$found"
        $index++
    }
    Write-Host "[$index] $title - Manual"

    # Capture user input
    $choice = Read-Host "Please choose an option [1-$index]"

    if ($choice -eq $index) {
        $path = Read-Host "Please enter your $title directory"
    } else {
        $path = Check-RegKey -path $options[$choice - 1]
    }

    if (-not $path) {
        Write-Host "Path: '$path' not found!"
        Process-Choice -title $title -options $options -cmdlinePath $cmdlinePath
    }

    # Store the path
    $KOTORPaths[$title] = $path

    Write-Host "User chose: $path"
    Write-Host "Check for chitin.key - $(if (Check-Folder -path $path) {'success'} else {'failure'})"
}

# Possible registry keys for each version
$KOTOR1Options = @(
    'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 32370',
    'HKLM:\SOFTWARE\GOG.com\Games\1207666283',
    'HKLM:\SOFTWARE\WOW6432Node\BioWare\SW\KOTOR',
    'HKLM:\SOFTWARE\BioWare\SW\KOTOR'
)

$KOTOR2Options = @(
    'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 208580',
    'HKLM:\SOFTWARE\GOG.com\Games\1421404581',
    'HKLM:\SOFTWARE\WOW6432Node\LucasArts\KotOR2',
    'HKLM:\SOFTWARE\LucasArts\KotOR2'
)

Process-Choice -title "KOTOR1" -options $KOTOR1Options -cmdlinePath $KOTOR1Path
Process-Choice -title "TSL" -options $KOTOR2Options -cmdlinePath $TSLPath

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
    
    & 'tslpatchdata\pykotorcli.exe' "$($KOTORPaths['TSL'])" "$PWD"
    
    Write-Host "Star Wars : Knights of the Old Republic II Expanded Galaxy Port Project Installation Completed!"
} catch {
    Write-Host "An error occurred: $_"
    exit 2
}
Read-Host "Press Enter to continue..."