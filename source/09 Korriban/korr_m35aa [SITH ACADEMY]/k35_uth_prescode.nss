void main() {
	int nGlobal = GetGlobalNumber("KOR_SITH_PRESTIGE");
	SetGlobalNumber("KOR_SITH_PRESTIGE", (nGlobal + 1));
	SetGlobalNumber("KOR_SITH_CODE", 2);
}

