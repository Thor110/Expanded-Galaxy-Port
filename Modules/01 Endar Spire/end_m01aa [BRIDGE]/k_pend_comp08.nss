int StartingConditional() {
	int nLocalBool;
  if ((((0 >= 0) && (0 <= 19)) && GetIsObjectValid(OBJECT_SELF))) {
		nLocalBool = GetLocalBoolean(OBJECT_SELF, 0);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

