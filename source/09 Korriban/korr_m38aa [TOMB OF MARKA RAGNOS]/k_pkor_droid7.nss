void main() {
	int nGlobal = GetGlobalNumber("KOR_DROID_HINT");
	int int3 = GetGlobalNumber("KOR_HINT_COUNT");
	SetGlobalNumber("KOR_HINT_COUNT", (int3 + 1));
	if ((nGlobal == 6)) {
		SetGlobalNumber("KOR_DROID_HINT", 0);
	}
	else {
		SetGlobalNumber("KOR_DROID_HINT", (nGlobal + 1));
	}
}

