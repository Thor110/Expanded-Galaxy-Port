// Prototypes
void sub3(string stringParam1);
int sub2(int intParam1, int intParam2);
int sub1(int intParam1);

void sub3(string stringParam1) {
	if ((!ShipBuild())) {
		PrintString(stringParam1);
	}
}

int sub2(int intParam1, int intParam2) {
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

int sub1(int intParam1) {
	string string1;
	int int1 = 0;
	if ((intParam1 == 0)) {
		string1 = "K_COMPUTER_SPIKE";
	}
	else {
		if ((intParam1 == 5)) {
			string1 = "K_REPAIR_PART";
		}
	}
	object object1 = GetItemPossessedBy(GetFirstPC(), string1);
	if (GetIsObjectValid(object1)) {
		int1 = GetNumStackedItems(object1);
	}
	return int1;
}

int StartingConditional() {
	int int1 = 8;
	sub3(((("Spikes = " + IntToString(sub1(0))) + " Cost = ") + IntToString(sub2(int1, 0))));
	if ((sub1(0) >= sub2(int1, 0))) {
		return 1;
	}
	return 0;
}

