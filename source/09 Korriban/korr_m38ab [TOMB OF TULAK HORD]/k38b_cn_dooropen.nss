int StartingConditional() {
	object oK38b_dor_locked = GetObjectByTag("k38b_dor_locked", 0);
	if ((!GetIsOpen(oK38b_dor_locked))) {
		return 1;
	}
	return 0;
}

