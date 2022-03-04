int StartingConditional() {
	int nGlobal = GetGlobalNumber("KOR_FINAL_TEST");
	object oKor39_utharwynn = GetObjectByTag("kor39_utharwynn", 0);
	if (((nGlobal == 3) && (!GetIsDead(oKor39_utharwynn)))) {
		return 1;
	}
	return 0;
}

