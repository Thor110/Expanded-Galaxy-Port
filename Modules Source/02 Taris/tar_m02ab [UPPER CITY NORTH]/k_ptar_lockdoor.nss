void main() {
	object oTar02_lowdoor = GetObjectByTag("tar02_lowdoor", 0);
	if (GetIsObjectValid(oTar02_lowdoor)) {
		if ((!ShipBuild())) {
			AurPostString("LOCKING DOOR", 5, 5, 5.0);
		}
	}
	AssignCommand(oTar02_lowdoor, ActionCloseDoor(oTar02_lowdoor));
	SetLocked(oTar02_lowdoor, 1);
}
