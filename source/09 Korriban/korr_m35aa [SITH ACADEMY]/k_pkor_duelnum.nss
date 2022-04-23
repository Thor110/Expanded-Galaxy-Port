void main() {
	int nGlobal = GetGlobalNumber("KOR_DUEL_NUM");
	string string1 = IntToString((3 - nGlobal));
	string string3 = IntToString((Random(1000) + 1000));
	SetCustomToken(13, string1);
	SetCustomToken(14, string3);
}

