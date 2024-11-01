## WORK IN PROGRESS

As I am actively working on the project, things may be broken from time to time, I apologise in advance for any bugs or faults you may encounter when downloading directly from the repository.

Hoping to put out a proper release of all three parts of the project again some time soon.

# Expanded Galaxy Port
KotOR : Expanded Galaxy is a port of the first game to the second games version of the engine as well as a mod that adds the planets from the second game and a bunch of fixes / changes / additions.

## Repository folder and file structure
# Folders
changes - contains the components of the changes.ini files.

Expanded Galaxy Port Installer - the port installer folder containing the source folder and tslpatchdata folder as well as HoloPatcher.

future - future stuff to work on.
- 00 Original TSL Galaxy Map Locations - original galaxy map locations for Korriban & Dantooine.
- 01 Xbox Version - Xbox .xbe file and .gui files.
- Brotherhood Cutscenes - brotherhood cutscenes to edit to replace movie cutscenes.
- File List Mini Project - a set of file lists which are going to be integrated into the installer in order to pull the majority of the required files from the original games installation in order to reduce the filesize of this project.
- LegacySupport - notes and files for legacy support.
- planet_99 Star Forge - Star Forge Galaxy Map Model.
- Swoop Track Testing - Swoop track testing.
- Test Scripts - test scripts.
- Texture Overhaul - the beginnings of a set of lists that will eventually be used as a basis for working on a texture overhaul for the project.
- Turret Minigame - turret minigame testing.
- 00-remove-from-port-file-list.txt - files that might be able to be removed from the port-file-list with further work to ensure they aren't necessary.
- load_001ebo.tga - to load screen or not to load screen, that is the question.
- original gui values.txt - research on the hard coded colour values in the game's executable.
- port issues.txt - bug note.
- port item highlight.txt - kotor 1 item highlight colour values.

modules - contains the level files organised into folders denoting the planet and module names as well as the .mod files themselves, I use this to quickly and easily repack levels.

saves - the latest common save for testing purposes.

Scripts Left To Decompile - scripts that haven't been decompiled yet exist here.

# Files
- .gitattributes - the gitattributes file.
- .gitignore - the gitignore file.
- k1-port-bugs.ods - bug tracking.
- README.md - the readme.md file.
- update-changes.ini.bat - A batch file used for updating the changes.ini files by constructing them from the parts in the changes folder.
- update-modules.bat - A batch file used for updating the .mod files inside the "Expanded Galaxy Port Installer\tslpatchdata\modules" directory using those from the "Modules Source" folder.
- version.txt - the current version number.

## Installation

Requires the Main part of the project! [https://github.com/Thor110/Expanded-Galaxy-Main]

This also requires that you own and have a copy of the original game installed.

# Playing the game

launcher.bat - is for choosing between KotOR1 & KotOR2 and is installed to the main game directory.
