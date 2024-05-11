int StartingConditional() {
	int int1;
	object oKor35_shaardan = GetObjectByTag("kor35_shaardan", 0);
	int1 = (((GetGlobalNumber("KOR_SHAARDAN_SWORD") == 2) && (GetGlobalNumber("KOR33_SHAARDAN") < 4)) && GetIsObjectValid(oKor35_shaardan));
	return int1;
}

