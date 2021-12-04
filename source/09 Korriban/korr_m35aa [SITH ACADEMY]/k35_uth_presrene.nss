void main() {
	SetGlobalNumber("KOR_RENEGADE_DEAL", 3);
	int nGlobal = GetGlobalNumber("KOR_SITH_PRESTIGE");
	SetGlobalNumber("KOR_SITH_PRESTIGE", (nGlobal + 1));
}

