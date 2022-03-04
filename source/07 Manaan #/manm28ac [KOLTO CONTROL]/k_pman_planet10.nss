int StartingConditional() {
	int int1 = (GetGlobalNumber("MAN_LIVEB_STATE") == 2);
	if (int1) {
		SetGlobalNumber("MAN_LIVEB_STATE", 4);
	}
	return int1;
}

