int StartingConditional() {
	int nGlobal = GetGlobalNumber("KOR_FINAL_TEST");
	object oKor39_yuthura = GetObjectByTag("kor39_yuthura", 0);
	if (((nGlobal == 2) && (!GetIsDead(oKor39_yuthura)))) {
		return 1;
	}
	return 0;
}

