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
	sub1(1.7);
	object oAmbush_thrust = GetObjectByTag("ambush_thrust", 0);
	object oAmbush_thrust2 = GetObjectByTag("ambush_thrust2", 0);
	object object5 = GetObjectByTag("ambush_thrust2", 1);
	object oTat_party_jump0 = GetObjectByTag("tat_party_jump0", 0);
	object oTat_party_jump1 = GetObjectByTag("tat_party_jump1", 0);
	object oTat_party_jump2 = GetObjectByTag("tat_party_jump2", 0);
	DestroyObject(GetObjectByTag("calo_leg_cover", 0), 0.0, 0, 0.0);
	DelayCommand(0.3, AssignCommand(GetObjectByTag("bp_calo_ambush", 0), ActionPlayAnimation(15, 0.3, 999.0)));
	DelayCommand(0.2, PlaySound("mgs_thrustloop01"));
	DelayCommand(4.6, PlaySound("mgs_turbdwn02"));
	DelayCommand(8.6, SoundObjectStop(oAmbush_thrust));
}

