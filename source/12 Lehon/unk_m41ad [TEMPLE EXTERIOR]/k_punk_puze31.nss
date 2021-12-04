void main() {
	if ((GetGlobalNumber("UNK_PUZE_FINAL") == 1)) {
		SetGlobalNumber("UNK_PUZE_FINAL", 2);
	}
	else {
		SetGlobalNumber("UNK_PUZE_FINAL", 0);
	}
}

