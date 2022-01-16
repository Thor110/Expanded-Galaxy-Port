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
	object oSta45a_Sith01 = GetObjectByTag("sta45a_Sith01", 0);
	object oSta45a_Sith02 = GetObjectByTag("sta45a_Sith02", 0);
	object oSta45a_Sith03 = GetObjectByTag("sta45a_Sith03", 0);
	object oSta45a_Sith04 = GetObjectByTag("sta45a_Sith04", 0);
	object oSta_Jedi002 = GetObjectByTag("sta_Jedi002", 0);
	object oSta_Jedi003 = GetObjectByTag("sta_Jedi003", 0);
	object oSta_Jedi004 = GetObjectByTag("sta_Jedi004", 0);
	object oSta_way_sithjed2 = GetObjectByTag("sta_way_sithjed2", 0);
	object oSta_way_sithjed3 = GetObjectByTag("sta_way_sithjed3", 0);
	object oSta_way_sithjed4 = GetObjectByTag("sta_way_sithjed4", 0);
	object oSta_way_sithjedi = GetObjectByTag("sta_way_sithjedi", 0);
	object oSta45a_sta45d = GetObjectByTag("sta45a_sta45d", 0);
	sub1(6.0);
	AssignCommand(oSta45a_sta45d, ActionOpenDoor(oSta45a_sta45d));
	DelayCommand(3.3, SetLightsaberPowered(oSta45a_Sith01, 1, 1, 1));
	DelayCommand(4.2, SetLightsaberPowered(oSta45a_Sith02, 1, 1, 1));
	DelayCommand(5.1, SetLightsaberPowered(oSta45a_Sith03, 1, 1, 1));
	DelayCommand(5.4, SetLightsaberPowered(oSta45a_Sith04, 1, 1, 1));
	DelayCommand(1.8, AssignCommand(oSta45a_Sith01, ActionMoveToObject(oSta_way_sithjedi, 1, 1.0)));
	DelayCommand(2.2, AssignCommand(oSta45a_Sith02, ActionMoveToObject(oSta_way_sithjed2, 1, 1.0)));
	DelayCommand(2.4, AssignCommand(oSta45a_Sith03, ActionMoveToObject(oSta_way_sithjed3, 1, 1.0)));
	DelayCommand(2.0, AssignCommand(oSta45a_Sith04, ActionMoveToObject(oSta_way_sithjed4, 1, 1.0)));
	DelayCommand(2.7, SetDialogPlaceableCamera(13));
}

