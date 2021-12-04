void main() {
	object oTar03_underdoor = GetObjectByTag("tar03_underdoor", 0);
	AssignCommand(oTar03_underdoor, ActionOpenDoor(oTar03_underdoor));
}

