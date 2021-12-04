int StartingConditional() {
	int int1;
	object oLev_detdoor = GetObjectByTag("lev_detdoor", 0);
	int1 = GetLocked(oLev_detdoor);
	return int1;
}

