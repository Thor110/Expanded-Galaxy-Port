int StartingConditional() {
	if (((GetGlobalBoolean("UNK_RAK_TEMPLE_OK") == 0) && (GetGlobalNumber("Unk_redvill") == 1))) {
		return 1;
	}
	return 0;
}

