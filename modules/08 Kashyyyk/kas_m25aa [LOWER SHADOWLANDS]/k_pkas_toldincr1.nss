void main() {
	int nGlobal = GetGlobalNumber("kas_freyyrstate");
	if ((nGlobal > 1)) {
		SetGlobalNumber("kas_freyyrstate", 1);
	}
}

