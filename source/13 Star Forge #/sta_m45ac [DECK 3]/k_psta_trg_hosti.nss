void main() {
	object oPC = GetFirstPC();
	if ((GetExitingObject() == oPC)) {
		SetGlobalBoolean("STA_DROID_STAND", 0);
		ChangeFactionByFaction(4, 1);
	}
}

