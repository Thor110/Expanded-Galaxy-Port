void main() {
	object oPC = GetFirstPC();
	if ((GetEnteringObject() == oPC)) {
		SetGlobalBoolean("STA_DROID_STAND", 1);
		SurrenderByFaction(1, 4);
	}
}

