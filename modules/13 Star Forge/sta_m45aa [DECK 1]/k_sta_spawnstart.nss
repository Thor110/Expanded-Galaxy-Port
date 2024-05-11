// Prototypes
void sub2(object objectParam1, int intParam2);
int sub1(object objectParam1);

void sub2(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, 10, intParam2);
		}
	}
}

int sub1(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, 10);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	if (((GetEnteringObject() == GetPartyMemberByIndex(0)) && (!sub1(OBJECT_SELF)))) {
		sub2(OBJECT_SELF, 1);
		SetGlobalBoolean("K_STA_SPAWNER", 1);
		SetGlobalNumber("K_STA_HORDE", 0);
	}
}

