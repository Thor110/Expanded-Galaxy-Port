int StartingConditional() {
	int int1;
	object oPC = GetFirstPC();
	object object3 = GetItemPossessedBy(oPC, "datapad");
	int1 = (!GetIsObjectValid(object3));
	return int1;
}

