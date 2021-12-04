int StartingConditional() {
	object oSta_carth = GetObjectByTag("sta_carth", 0);
	int nGlobal = GetGlobalNumber("CARTH_ROM_END");
	if (((nGlobal == 1) && GetIsDead(oSta_carth))) {
		return 1;
	}
	return 0;
}

