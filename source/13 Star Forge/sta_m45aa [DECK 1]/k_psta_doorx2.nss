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
	object oSta_door_x2 = GetObjectByTag("sta_door_x2", 0);
	location location1 = GetLocation(oSta_door_x2);
	object oNPC = GetPartyMemberByIndex(1);
	object object5 = GetPartyMemberByIndex(2);
	object oSta45_droid_cut3 = GetObjectByTag("sta45_droid_cut3", 0);
	object oSta45_droid_cut4 = GetObjectByTag("sta45_droid_cut4", 0);
	object oSTA_DROID3_WP = GetObjectByTag("STA_DROID3_WP", 0);
	object oSTA_DROID4_WP = GetObjectByTag("STA_DROID4_WP", 0);
	object oSta_smoke3 = GetObjectByTag("sta_smoke3", 0);
	object oSta_smoke4 = GetObjectByTag("sta_smoke4", 0);
	sub1(5.3);
	DelayCommand(1.3, SetDialogPlaceableCamera(29));
	DelayCommand(2.35, AssignCommand(oNPC, PlayAnimation(101, 1.0, 0.0)));
	DelayCommand(2.35, AssignCommand(object5, PlayAnimation(101, 1.0, 0.0)));
	DelayCommand(2.3, ApplyEffectAtLocation(0, EffectVisualEffect(3010, 0), location1, 0.0));
	DelayCommand(2.5, ApplyEffectToObject(0, EffectVisualEffect(6002, 0), GetFirstPC(), 0.0));
	DelayCommand(2.7, ApplyEffectAtLocation(0, EffectVisualEffect(3010, 0), location1, 0.0));
	DelayCommand(2.8, DestroyObject(oSta_door_x2, 0.0, 0, 0.0));
	DelayCommand(2.9, AssignCommand(oSta45_droid_cut3, ActionMoveToObject(oSTA_DROID3_WP, 1, 1.0)));
	DelayCommand(3.2, AssignCommand(oSta45_droid_cut4, ActionMoveToObject(oSTA_DROID4_WP, 1, 1.0)));
}

