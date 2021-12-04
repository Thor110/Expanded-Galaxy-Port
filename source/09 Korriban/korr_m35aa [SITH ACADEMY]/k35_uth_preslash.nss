void main() {
	SetGlobalNumber("KOR_LASHOWE_PLOT", 6);
	int nGlobal = GetGlobalNumber("KOR_SITH_PRESTIGE");
	SetGlobalNumber("KOR_SITH_PRESTIGE", (nGlobal + 1));
}

