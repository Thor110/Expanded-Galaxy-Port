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
void sub2(int intParam1, string stringParam2, location locationParam3);
void sub1(float floatParam1);

void sub2(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oStunt14_bandon = GetObjectByTag("stunt14_bandon", 0);
	object oStunt14_droid_fixer = GetObjectByTag("stunt14_droid_fixer", 0);
	object oStunt14_droid_broken = GetObjectByTag("stunt14_droid_broken", 0);
	object oStunt14_door = GetObjectByTag("stunt14_door", 0);
	object oStunt14_bandon_wp1 = GetObjectByTag("stunt14_bandon_wp1", 0);
	object oStunt14_droid1_wp = GetObjectByTag("stunt14_droid1_wp", 0);
	object oStunt14_droid1_wp2 = GetObjectByTag("stunt14_droid1_wp2", 0);
	object oStunt14_push = GetObjectByTag("stunt14_push", 0);
	location location1 = GetLocation(oStunt14_push);
	location location3 = GetLocation(GetObjectByTag("stunt14_explode", 0));
	object oStunt14_computer = GetObjectByTag("stunt14_computer", 0);
	location location5 = GetLocation(oStunt14_computer);
	object oStunt14_wp_03 = GetObjectByTag("stunt14_wp_03", 0);
	object oNearestG_wardroid01 = GetNearestObjectByTag("g_wardroid01", oStunt14_computer, 1);
	object oNearestG_sithcomm01 = GetNearestObjectByTag("g_sithcomm01", oStunt14_computer, 1);
	sub1(12.0);
	DelayCommand(1.5, SetDialogPlaceableCamera(5));
	AssignCommand(oStunt14_droid_fixer, ActionMoveToObject(oStunt14_droid1_wp, 0, 1.0));
	DelayCommand(7.6, AssignCommand(oStunt14_droid_fixer, ActionMoveToObject(oStunt14_droid1_wp2, 0, 1.0)));
	DelayCommand(3.0, AssignCommand(oStunt14_door, ActionOpenDoor(OBJECT_SELF)));
	DelayCommand(4.0, AssignCommand(oStunt14_bandon, ActionMoveToObject(oStunt14_bandon_wp1, 0, 1.0)));
	DelayCommand(9.5, SetDialogPlaceableCamera(12));
	DelayCommand(9.6, AssignCommand(oStunt14_bandon, ActionCastFakeSpellAtObject(23, oStunt14_computer, 0)));
	DelayCommand(10.1, ApplyEffectToObject(1, EffectForcePushTargeted(location1, 1), oStunt14_droid_fixer, 0.15));
	DelayCommand(10.5, SetDialogPlaceableCamera(14));
	DelayCommand(10.51, ApplyEffectToObject(0, EffectDamage(100, 8, 0), oStunt14_computer, 0.0));
	DelayCommand(10.469999, ApplyEffectToObject(0, EffectVisualEffect(6002, 0), GetFirstPC(), 0.0));
	DelayCommand(10.5, sub2(64, "stunt14_rubble", location5));
	DelayCommand(10.5, ApplyEffectAtLocation(0, EffectVisualEffect(3003, 0), location5, 0.0));
	DelayCommand(10.6, ApplyEffectToObject(0, EffectDeath(0, 1), oStunt14_droid_fixer, 0.0));
	DelayCommand(10.8, ApplyEffectToObject(0, EffectDeath(0, 1), oNearestG_sithcomm01, 0.0));
	DelayCommand(11.8, ApplyEffectToObject(0, EffectDeath(1, 1), oNearestG_wardroid01, 0.0));
	DelayCommand(12.0, AssignCommand(oStunt14_bandon, ActionMoveToObject(oStunt14_wp_03, 0, 1.0)));
	DelayCommand(13.1, ApplyEffectAtLocation(0, EffectVisualEffect(4003, 0), location5, 0.0));
	DelayCommand(14.5, ApplyEffectAtLocation(0, EffectVisualEffect(4003, 0), location5, 0.0));
	DelayCommand(16.0, ApplyEffectAtLocation(0, EffectVisualEffect(4003, 0), location5, 0.0));
}

