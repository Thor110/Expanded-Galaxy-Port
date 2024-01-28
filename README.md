In order to install the most up-to-date version, you must download the entire repository and then use create-release.bat to pack the relevant files into a 7z file and then unpack them, I will move files around and fix it so that this isn't the case soon.

# Expanded-Galaxy-Port
Expanded Galaxy : Port

## Repository folder and file structure
# Folders
00 Scripts Left To Decompile - scripts that haven't been decompiled yet exist here.

Expanded Galaxy Port Installer - the port installer folder containing the source folder and tslpatchdata folder as well as the installer scripts.

Modules - contains the level files organised into folders denoting the planet and module names as well as the .mod files themselves, I use this to quickly and easily repack levels.

Override - the contents of the Override folder.

# Files

.gitattributes - the gitattributes file.

README.md - the readme.md file.

create-release.bat - a batch file for creating the release 7zip file.

version.txt - this text file contains the version number and is used by "create-release.bat" in order to number and name the 7zip file it produces.

## Installation

Requires the Main part of the project!

launcher.bat is for choosing between KotOR1 & KotOR2.
