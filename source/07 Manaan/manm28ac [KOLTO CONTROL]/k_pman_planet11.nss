int StartingConditional() {
	int int1 = (GetGlobalNumber("MAN_LIVEB_STATE") == 3);
	if (int1) {
		SetGlobalNumber("MAN_LIVEB_STATE", 2);
	}
	return int1;
}

