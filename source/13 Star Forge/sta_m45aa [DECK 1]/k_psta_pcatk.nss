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
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oPC = GetFirstPC();
	object oSta_bastila = GetObjectByTag("sta_bastila", 0);
	object oSta_carth = GetObjectByTag("sta_carth", 0);
	int int1;
	if (((GetItemInSlot(4, oPC) != OBJECT_INVALID) && (GetItemInSlot(5, oPC) != OBJECT_INVALID))) {
		int1 = 195;
	}
	else {
		if ((GetBaseItemType(GetItemInSlot(4, oPC)) == 9)) {
			int1 = 154;
		}
		else {
			int1 = 113;
		}
	}
	SetLockHeadFollowInDialog(oPC, 0);
	SetLockHeadFollowInDialog(oSta_bastila, 1);
	sub1(4.2);
	AssignCommand(oSta_bastila, SetFacingPoint(GetPosition(oSta_carth)));
	ChangeToStandardFaction(oSta_bastila, 5);
	ChangeToStandardFaction(oSta_carth, 1);
	SetLightsaberPowered(oPC, 1, 1, 1);
	DelayCommand(0.1, AssignCommand(oPC, CutsceneAttack(oSta_carth, int1, 1, 500)));
	DelayCommand(1.6800001, SetDialogPlaceableCamera(33));
}

