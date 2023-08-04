// Globals
	int intGLOB_152 = 3;
	int intGLOB_153 = 4;
// Prototypes
void sub3(int intParam1);
int sub2();
int sub1();

void sub3(int intParam1) {
	SetGlobalNumber("END_TRASK_DLG", intParam1);
}

int sub2() {
	int int1 = 0;
	object oPC = GetFirstPC();
	if (((GetIsObjectValid(GetItemInSlot(4, oPC)) || GetIsObjectValid(GetItemInSlot(5, oPC))) || GetIsObjectValid(GetItemInSlot(1, oPC)))) {
		int1 = 1;
	}
	return int1;
}

int sub1() {
	return GetGlobalNumber("END_TRASK_DLG");
}

int StartingConditional() {
	int int1 = 0;
	if ((sub1() == intGLOB_152)) {
		if (sub2()) {
			sub3(intGLOB_153);
		}
		else {
			int1 = 1;
		}
	}
	return int1;
}

