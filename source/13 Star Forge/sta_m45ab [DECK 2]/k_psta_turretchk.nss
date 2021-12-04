int StartingConditional() {
	int int1 = 0;
	int int2;
	object object1;
	int2 = 1;
	while ((int2 < 17)) {
		object1 = GetObjectByTag(("sta_turret" + IntToString(int2)), 0);
		if ((GetStandardFaction(object1) == 5)) {
			return 0;
		}
		else {
			if (GetIsObjectValid(object1)) {
				int1 = (int1 + 1);
			}
		}
		(int2++);
	}
	if ((int1 == 0)) {
		return 0;
	}
	else {
		return 1;
	}
}

