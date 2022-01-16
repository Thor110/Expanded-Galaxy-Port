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
	object oSta_door_freeze = GetObjectByTag("sta_door_freeze", 0);
	object oK_sta_sithfreeze = GetObjectByTag("k_sta_sithfreeze", 0);
	object oK_sta_sithfreeze2 = GetObjectByTag("k_sta_sithfreeze2", 0);
	object oK_sta_sithfreeze3 = GetObjectByTag("k_sta_sithfreeze3", 0);
	sub1(3.0);
	AssignCommand(oK_sta_sithfreeze, ActionCastFakeSpellAtLocation(23, GetLocation(oSta_door_freeze), 0));
	DelayCommand(0.2, AssignCommand(oK_sta_sithfreeze2, ActionCastFakeSpellAtLocation(23, GetLocation(oSta_door_freeze), 0)));
	DelayCommand(0.4, AssignCommand(oK_sta_sithfreeze3, ActionCastFakeSpellAtLocation(23, GetLocation(oSta_door_freeze), 0)));
	DelayCommand(0.5, ApplyEffectToObject(2, EffectVisualEffect(2041, 0), oSta_door_freeze, 0.0));
}

