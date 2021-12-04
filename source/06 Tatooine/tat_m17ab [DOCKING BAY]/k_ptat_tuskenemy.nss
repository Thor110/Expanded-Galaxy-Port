int StartingConditional() {
	object oSpeaker = GetPCSpeaker();
	object oTat18_tuskanfac = GetObjectByTag("tat18_tuskanfac", 0);
	if ((GetIsEnemy(oSpeaker, oTat18_tuskanfac) == 1)) {
		return 1;
	}
	else {
		return 0;
	}
}

