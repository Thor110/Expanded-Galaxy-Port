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
int sub1(object objectParam1);

int sub1(object objectParam1) {
	if ((!GetIsObjectValid(objectParam1))) {
		return 0;
	}
	object oLastActor = GetLastHostileActor(objectParam1);
	return ((GetIsObjectValid(oLastActor) || (!GetIsDead(oLastActor))) || GetObjectSeen(oLastActor, objectParam1));
}

void main() {
	object oEntering = GetEnteringObject();
	object oNearestKas25_mand_invis = GetNearestObjectByTag("kas25_mand_invis", OBJECT_SELF, 1);
	if (((GetIsPC(oEntering) == 1) && (!sub1(oEntering)))) {
		if (((GetIsObjectValid(GetItemInSlot(4, oEntering)) == 0) && (GetIsObjectValid(GetItemInSlot(5, oEntering)) == 0))) {
			AssignCommand(oNearestKas25_mand_invis, ActionStartConversation(oEntering, "", 0, 0, 1, "", "", "", "", "", ""));
			DestroyObject(OBJECT_SELF, 0.0, 0, 0.0);
		}
	}
}

