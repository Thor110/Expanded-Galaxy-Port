void main() {
	object oPC = GetFirstPC();
	if ((GetExitingObject() == oPC)) {
		SetGlobalBoolean("KOR_ENTER_ARMORY", 0);
	}
}

