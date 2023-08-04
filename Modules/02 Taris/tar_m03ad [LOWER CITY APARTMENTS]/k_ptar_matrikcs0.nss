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
void sub5(object objectParam1);
void sub4(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub3(object objectParam1);
void sub2(object objectParam1);
void sub1(object objectParam1);

void sub5(object objectParam1) {
	PlaySound("gui_minearm");
	CreateItemOnFloor("G_I_TRAPKIT009", GetLocation(objectParam1), 0);
}

void sub4(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub3(object objectParam1) {
	sub4("SET BOMB", 5, 5, 5.0);
	ActionPlayAnimation(10, 1.0, 3.0);
	DelayCommand(1.0, sub5(objectParam1));
}

void sub2(object objectParam1) {
	if ((GetTag(objectParam1) == "tar03_wpbomb1")) {
		SetDialogPlaceableCamera(7);
	}
	ActionMoveToObject(objectParam1, 0, 2.0);
	ActionDoCommand(sub3(objectParam1));
}

void sub1(object objectParam1) {
	SetCommandable(1, objectParam1);
	AssignCommand(objectParam1, ClearAllActions());
	AssignCommand(objectParam1, ActionMoveToObject(GetObjectByTag("tar03_wppcexp", 0), 1, 1.0));
}

void main() {
	DestroyObject(GetItemPossessedBy(GetPCSpeaker(), "ptar_permacrete"), 0.0, 0, 0.0);
	sub1(GetPartyMemberByIndex(1));
	DelayCommand(1.0, sub1(GetPartyMemberByIndex(2)));
	ActionPauseConversation();
	sub2(GetObjectByTag("tar03_wpbomb0", 0));
	DelayCommand(8.0, sub2(GetObjectByTag("tar03_wpbomb1", 0)));
	DelayCommand(14.0, ActionResumeConversation());
}

