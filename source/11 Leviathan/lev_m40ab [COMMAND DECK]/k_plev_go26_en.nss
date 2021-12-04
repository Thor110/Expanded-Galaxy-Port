void main() {
	object oEntering = GetEnteringObject();
	if (GetIsPC(oEntering)) {
		AssignCommand(oEntering, ActionJumpToObject(GetObjectByTag("lev40_wp26", 0), 0));
	}
}

