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
	object oBastila = GetObjectByTag("Bastila", 0);
	object oCarth = GetObjectByTag("Carth", 0);
	object oDarthMalak400 = GetObjectByTag("DarthMalak400", 0);
	sub1(4.0);
	RemovePartyMember(2);
	RemovePartyMember(0);
	ChangeToStandardFaction(oCarth, 5);
	ChangeToStandardFaction(oBastila, 5);
	PlaySound("v_imp_stun");
	AssignCommand(oDarthMalak400, ActionCastFakeSpellAtObject(46, oPC, 0));
	DelayCommand(0.5, ApplyEffectToObject(2, EffectParalyze(), oBastila, 0.0));
	DelayCommand(0.5, ApplyEffectToObject(2, EffectVisualEffect(2008, 0), oBastila, 0.0));
	DelayCommand(0.5, ApplyEffectToObject(2, EffectParalyze(), oCarth, 0.0));
	DelayCommand(0.5, ApplyEffectToObject(2, EffectVisualEffect(2008, 0), oCarth, 0.0));
}

