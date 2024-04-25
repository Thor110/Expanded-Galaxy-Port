void main() {
	int nGlobal = GetGlobalNumber("TAR_CALOBARFIGHT");
	if ((nGlobal == 50)) {
		StartNewModule("ebo_m12aa", "bos_ebochanna", "", "", "", "", "", "");
	}
	if ((nGlobal == 60)) {
		StartNewModule("ebo_m41aa", "", "", "", "", "", "", "");
	}
}

