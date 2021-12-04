void main() {
	int nGlobal = GetGlobalNumber("kas_freyyrstate");
	if ((nGlobal > 2)) {
		SetGlobalNumber("kas_freyyrstate", 2);
	}
}

