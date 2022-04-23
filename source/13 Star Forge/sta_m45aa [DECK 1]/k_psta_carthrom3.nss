int StartingConditional() {
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	int nGlobal = GetGlobalNumber("CARTH_ROM_END");
	if (((nGlobal == 2) && (!GetIsDead(oSta_bastila)))) {
		return 1;
	}
	return 0;
}

