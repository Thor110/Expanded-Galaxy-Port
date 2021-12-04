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
	object oWp_partyendjump_0 = GetObjectByTag("wp_partyendjump_0", 0);
	object oWp_partyendjump_1 = GetObjectByTag("wp_partyendjump_1", 0);
	object oWp_partyendjump_2 = GetObjectByTag("wp_partyendjump_2", 0);
	object oJolee = GetObjectByTag("jolee", 0);
	object oJuhani = GetObjectByTag("juhani", 0);
	sub1(3.0);
	DelayCommand(1.0, ApplyEffectAtLocation(0, EffectVisualEffect(3011, 0), GetLocation(GetObjectByTag("unk41_tplshield", 0)), 0.0));
	DelayCommand(1.2, DestroyObject(GetObjectByTag("unk41_tplshield", 0), 0.0, 0, 0.0));
	DelayCommand(1.2, DestroyObject(GetObjectByTag("shieldtrig", 0), 0.0, 0, 0.0));
	DelayCommand(1.2, SoundObjectStop(GetObjectByTag("forcefield", 0)));
	AssignCommand(GetPCSpeaker(), JumpToLocation(GetLocation(oWp_partyendjump_0)));
	AssignCommand(oJolee, JumpToLocation(GetLocation(oWp_partyendjump_1)));
	if (GetIsObjectValid(oJuhani)) {
		AssignCommand(oJuhani, JumpToLocation(GetLocation(oWp_partyendjump_2)));
	}
}

