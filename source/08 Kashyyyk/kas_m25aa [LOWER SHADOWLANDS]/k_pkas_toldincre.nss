void main() {
	int nGlobal = GetGlobalNumber("kas_freyyrstate");
	nGlobal = (nGlobal + 1);
	SetGlobalNumber("kas_freyyrstate", nGlobal);
}

