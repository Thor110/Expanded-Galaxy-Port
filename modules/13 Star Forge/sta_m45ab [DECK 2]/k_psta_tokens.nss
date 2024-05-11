// Prototypes
int sub1(int intParam1, int intParam2);

int sub1(int intParam1, int intParam2) {
	float float1 = IntToFloat(GetSkillRank(intParam2, GetPartyMemberByIndex(0)));
	int int2;
	float1 = (float1 / 4.0);
	int2 = (intParam1 - FloatToInt(float1));
	if ((int2 < 1)) {
		if ((int2 <= (-3))) {
			int2 = 0;
		}
		else {
			int2 = 1;
		}
	}
	return int2;
}

int StartingConditional() {
	SetCustomToken(31, IntToString(sub1(3, 0)));
	SetCustomToken(32, IntToString(sub1(5, 0)));
	SetCustomToken(33, IntToString(sub1(8, 0)));
	SetCustomToken(34, IntToString(sub1(10, 0)));
	SetCustomToken(35, IntToString(sub1(25, 0)));
	SetCustomToken(41, IntToString(sub1(1, 5)));
	SetCustomToken(42, IntToString(sub1(4, 5)));
	SetCustomToken(43, IntToString(sub1(4, 5)));
	SetCustomToken(44, IntToString(sub1(5, 5)));
	SetCustomToken(45, IntToString(sub1(6, 5)));
	return 1;
}
