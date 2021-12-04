void main() {
	SetGlobalNumber("KOR_ROGUE_DROID", 3);
	int nGlobal = GetGlobalNumber("KOR_SITH_PRESTIGE");
	SetGlobalNumber("KOR_SITH_PRESTIGE", (nGlobal + 1));
}

