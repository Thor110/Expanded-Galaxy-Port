int StartingConditional() {
	object oKas25_drdmkfour1 = GetObjectByTag("kas25_drdmkfour1", 0);
	object oKas25_drdmkfour2 = GetObjectByTag("kas25_drdmkfour2", 0);
	if ((GetIsObjectValid(oKas25_drdmkfour1) || GetIsObjectValid(oKas25_drdmkfour2))) {
		return 1;
	}
	return 0;
}

