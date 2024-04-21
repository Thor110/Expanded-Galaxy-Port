// Prototypes
void sub6(object objectParam1, int intParam2, int intParam3);
void sub5(int intParam1);
int sub4(object objectParam1, int intParam2);
int sub2();

void sub6(object objectParam1, int intParam2, int intParam3) {
	int nLevel = GetHitDice(GetFirstPC());
	if ((intParam3 == 1)) {
		if (((((intParam2 == 11) || (intParam2 == 16)) || (intParam2 == 17)) || (intParam2 == 18))) {
			GiveXPToCreature(GetFirstPC(), (nLevel * 15));
		}
		else {
			if ((((intParam2 == 12) || (intParam2 == 19)) || (intParam2 == 15))) {
				GiveXPToCreature(GetFirstPC(), (nLevel * 20));
			}
			else {
				if (((intParam2 == 13) || (intParam2 == 14))) {
					GiveXPToCreature(GetFirstPC(), (nLevel * 10));
				}
			}
		}
	}
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		if (((intParam3 == 1) || (intParam3 == 0))) {
			SetLocalBoolean(objectParam1, intParam2, intParam3);
		}
	}
}

void sub5(int intParam1) {
	sub6(GetObjectByTag("end_trask", 0), 2, intParam1);
}

int sub4(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

int sub2() {
	return sub4(GetObjectByTag("end_trask", 0), 2);
}

void main() {
	SetGlobalNumber("END_TRASK_DLG", 2);
	if ((sub2() == 0)) {
		sub5(1);
		DelayCommand(20.0, SignalEvent(OBJECT_SELF, EventUserDefined(110)));
	}
}
