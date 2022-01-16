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
	object oSittingSelkath = GetObjectByTag("SittingSelkath", 0);
	object object3 = GetObjectByTag("SittingSelkath", 1);
	object oSittingRodian = GetObjectByTag("SittingRodian", 0);
	object object7 = GetObjectByTag("SittingRodian", 1);
	object oBp_calo_ambush = GetObjectByTag("bp_calo_ambush", 0);
	location location1 = GetLocation(GetObjectByTag("ambush_jump_thug1", 0));
	location location3 = GetLocation(GetObjectByTag("ambush_jump_thug3", 0));
	location location5 = GetLocation(GetObjectByTag("ambush_jump_thug2", 0));
	location location7 = GetLocation(GetObjectByTag("ambush_jump_thug4", 0));
	location location9 = GetLocation(GetObjectByTag("ambush_jump_calo", 0));
	object object16 = GetItemPossessedBy(oBp_calo_ambush, "G_W_HVYBLSTR01");
	sub1(4.8);
	DestroyObject(oSittingSelkath, 0.0, 0, 0.0);
	DestroyObject(object3, 0.0, 0, 0.0);
	DestroyObject(oSittingRodian, 0.0, 0, 0.0);
	DestroyObject(object7, 0.0, 0, 0.0);
	DestroyObject(oBp_calo_ambush, 0.0, 0, 0.0);
	CreateObject(1, "bp_calo_ambush1", location1, 0);
	DelayCommand(0.1, sub2(1, "bp_calo_ambush2", location5));
	DelayCommand(0.2, sub2(1, "bp_calo_ambush4", location3));
	DelayCommand(0.3, sub2(1, "bp_calo_ambush3", location7));
	DelayCommand(0.4, sub2(1, "bp_calo_ambush_2", location9));
}

