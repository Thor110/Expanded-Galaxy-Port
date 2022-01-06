void main() {
	object oEntering = GetEnteringObject();
	if (GetIsPC(oEntering)) {
		AssignCommand(oEntering, ActionJumpToObject(GetObjectByTag("lev40_wp27b", 0), 0));
	}
}

