int StartingConditional() {
	int nValid;
	object oNearestKor37_obelisk = GetNearestObjectByTag("kor37_obelisk", OBJECT_SELF, 1);
	nValid = GetIsObjectValid(oNearestKor37_obelisk);
	return nValid;
}

