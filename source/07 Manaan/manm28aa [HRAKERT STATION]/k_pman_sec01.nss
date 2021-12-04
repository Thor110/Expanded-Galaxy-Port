// Globals
	int intGLOB_1 = 0;
	int intGLOB_2 = 1;
	int intGLOB_3 = 2;
	int intGLOB_4 = 3;
	int intGLOB_5 = 4;
	int intGLOB_6 = 5;
	int intGLOB_7 = 6;
	int intGLOB_8 = 7;
	int intGLOB_9 = 8;
	int intGLOB_10 = 9;
	int intGLOB_11 = 10;
	int intGLOB_12 = 11;
	int intGLOB_13 = 12;
	int intGLOB_14 = 13;
	int intGLOB_15 = 14;
	int intGLOB_16 = 15;
	int intGLOB_17 = 16;
	int intGLOB_18 = 17;
	int intGLOB_19 = 18;
	int intGLOB_20 = 19;
	int intGLOB_21 = 1100;
	int intGLOB_22 = (-6);
	int intGLOB_23 = (-5);
	int intGLOB_24 = (-4);
	int intGLOB_25 = (-2);
	int intGLOB_26 = (-1);
	int intGLOB_27 = 0;

// Prototypes
void sub2(string stringParam1);
int sub1(object objectParam1, int intParam2);

void sub2(string stringParam1) {
	int int1 = 1;
	object object1 = GetNearestObjectByTag(stringParam1, OBJECT_SELF, 1);
	while (GetIsObjectValid(object1)) {
		ChangeToStandardFaction(object1, 5);
		(int1++);
		object1 = GetNearestObjectByTag(stringParam1, OBJECT_SELF, int1);
	}
}

int sub1(object objectParam1, int intParam2) {
	int nLocalBool;
	if ((((intParam2 >= 0) && (intParam2 <= 19)) && GetIsObjectValid(objectParam1))) {
		nLocalBool = GetLocalBoolean(objectParam1, intParam2);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	if ((sub1(OBJECT_SELF, 9) == 0)) {
		ExecuteScript("k_pman_gas07", OBJECT_SELF, 0xFFFFFFFF);
		sub2("man28_pdroid");
		sub2("man28_pdroid2");
		sub2("man28_pdroid3");
		sub2("man28_turret01");
		sub2("man28_inssel");
		sub2("man28_inssel02");
		sub2("man28_inssel03");
		sub2("man28_inssel04");
		NoClicksFor(0.3);
		DelayCommand(0.1, ActionStartConversation(GetPartyMemberByIndex(0), "k_pman_comp01", 0, 1, 0, "", "", "", "", "", ""));
	}
}

