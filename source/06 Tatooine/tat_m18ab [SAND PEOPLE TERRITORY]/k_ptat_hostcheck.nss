int StartingConditional() {
	if (GetIsEnemy(GetFirstPC(), OBJECT_SELF)) {
		return 0;
	}
	return 1;
}

