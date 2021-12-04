void main() {
	int nGlobal = GetGlobalNumber("kas_freyyrstate");
	if ((nGlobal > 3)) {
		SetGlobalNumber("kas_freyyrstate", 3);
	}
}

