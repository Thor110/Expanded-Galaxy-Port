int StartingConditional() {
	int int1 = GetGlobalBoolean("DAN_ZHAR_TRAIN");
	if (int1) {
		SetGlobalBoolean("DAN_ZHAR_TRAIN", 0);
	}
	return int1;
}

