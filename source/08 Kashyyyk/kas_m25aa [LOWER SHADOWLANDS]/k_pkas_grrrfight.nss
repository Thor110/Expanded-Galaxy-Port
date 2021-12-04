int StartingConditional() {
	object oPC = GetFirstPC();
	object oNearest = GetNearestCreature(3, 1, oPC, 1, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);
	if (((GetDistanceToObject(oNearest) < 10.0) && (GetDistanceToObject(oNearest) > 0.0))) {
		return 1;
	}
	else {
		return 0;
	}
}

