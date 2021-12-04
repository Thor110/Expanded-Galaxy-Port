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
	object oSta_sith1 = GetObjectByTag("sta_sith1", 0);
	object oSta_sith2 = GetObjectByTag("sta_sith2", 0);
	object oSta_sith3 = GetObjectByTag("sta_sith3", 0);
	object object7 = GetItemPossessedBy(oSta_sith1, "sta_light1");
	object object9 = GetItemPossessedBy(oSta_sith1, "sta_light1");
	object object11 = GetItemPossessedBy(oSta_sith1, "sta_shortlight1");
	object object13 = GetItemPossessedBy(oSta_sith1, "sta_shortlight1");
	sub1(3.9);
	SetLockOrientationInDialog(GetPartyMemberByIndex(0), 0);
	SetLockOrientationInDialog(GetPartyMemberByIndex(1), 0);
	SetLockOrientationInDialog(GetPartyMemberByIndex(2), 0);
	DelayCommand(0.3, AssignCommand(oSta_sith3, ActionEquipMostDamagingMelee(OBJECT_INVALID, 0)));
	DelayCommand(0.8, AssignCommand(oSta_sith2, ActionEquipMostDamagingMelee(OBJECT_INVALID, 0)));
	DelayCommand(2.1, SetDialogPlaceableCamera(10));
	DelayCommand(2.2, AssignCommand(oSta_sith1, ActionEquipItem(object7, 4, 0)));
	DelayCommand(2.2, AssignCommand(oSta_sith1, ActionEquipItem(object11, 5, 0)));
}

