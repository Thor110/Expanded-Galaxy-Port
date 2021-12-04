void main() {
	object oPC = GetFirstPC();
	if ((GetEnteringObject() == oPC)) {
		SetGlobalBoolean("KOR_ENTER_ARMORY", 1);
	}
}

