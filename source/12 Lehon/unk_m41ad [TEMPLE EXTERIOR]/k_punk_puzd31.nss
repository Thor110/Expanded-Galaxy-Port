void main() {
	if ((GetGlobalNumber("UNK_PUZD_FINAL") == 1)) {
		SetGlobalNumber("UNK_PUZD_FINAL", 2);
	}
	else {
		SetGlobalNumber("UNK_PUZD_FINAL", 0);
	}
}

