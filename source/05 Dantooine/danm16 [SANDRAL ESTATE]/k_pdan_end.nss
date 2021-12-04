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
void sub3(string stringParam1);
void sub2(object objectParam1);
void sub1(string stringParam1);

void sub3(string stringParam1) {
	int int1 = 1;
	object object1 = GetNearestObjectByTag(stringParam1, OBJECT_SELF, 1);
	while (GetIsObjectValid(object1)) {
		ChangeToStandardFaction(object1, 1);
		(int1++);
		object1 = GetNearestObjectByTag(stringParam1, OBJECT_SELF, int1);
	}
}

void sub2(object objectParam1) {
	AssignCommand(objectParam1, ActionAttack(GetNearestCreature(3, 1, objectParam1, 1, 7, 7, 0xFFFFFFFF, 0xFFFFFFFF), 0));
}

void sub1(string stringParam1) {
	int int1 = 1;
	object object1 = GetNearestObjectByTag(stringParam1, OBJECT_SELF, 1);
	while (GetIsObjectValid(object1)) {
		ChangeToStandardFaction(object1, 6);
		sub2(object1);
		(int1++);
		object1 = GetNearestObjectByTag(stringParam1, OBJECT_SELF, int1);
	}
}

void main() {
	if ((GetGlobalBoolean("DAN_NSENT") == 1)) {
		sub1("dan16_sent2");
	}
	else {
		sub3("dan16_sent2");
	}
	if ((GetGlobalBoolean("DAN_SSENT") == 1)) {
		sub1("dan16_sent1");
	}
	else {
		sub3("dan16_sent1");
	}
	if ((GetGlobalBoolean("DAN_CSENT") == 1)) {
		sub1("dan16_room2");
	}
	else {
		sub3("dan16_room2");
	}
	if ((GetGlobalBoolean("DAN_RSENT") == 1)) {
		sub1("dan16_room3");
	}
	else {
		sub3("dan16_room3");
	}
	if ((GetGlobalBoolean("DAN_TSENT") == 1)) {
		sub1("dan16_room1");
	}
	else {
		sub3("dan16_room1");
	}
}

