void main() {
	int nGlobal = GetGlobalNumber("K_KALO_BANDON");
	if ((nGlobal == 10)) {
		SetGlobalNumber("K_KALO_BANDON", 20);
	}
}

