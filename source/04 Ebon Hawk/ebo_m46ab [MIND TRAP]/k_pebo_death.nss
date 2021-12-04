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

// Prototypes
void sub1(float floatParam1);

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oPC = GetFirstPC();
	object oNearestPrisoner = GetNearestObjectByTag("prisoner", OBJECT_SELF, 1);
	location location1 = GetLocation(oNearestPrisoner);
	sub1(8.0);
	AssignCommand(oNearestPrisoner, SetFacingPoint(GetPosition(oPC)));
	AssignCommand(oNearestPrisoner, PlayAnimation(4, 1.0, 3.0));
	DelayCommand(2.3, ApplyEffectToObject(1, EffectBeam(2051, oNearestPrisoner, 1, 0), oPC, 1.2));
	DelayCommand(3.0, AssignCommand(oPC, PlayAnimation(18, 1.0, 9.0)));
	DelayCommand(2.8, ApplyEffectAtLocation(0, EffectVisualEffect(3011, 0), location1, 0.0));
	DelayCommand(1.2, DestroyObject(oNearestPrisoner, 0.0, 0, 0.0));
	DelayCommand(3.0, ApplyEffectToObject(0, EffectVisualEffect(1007, 0), oPC, 0.0));
	DelayCommand(2.9, ApplyEffectToObject(0, EffectVisualEffect(1011, 0), oPC, 0.0));
	DelayCommand(5.0, SetDialogPlaceableCamera(20));
	DelayCommand(6.0, SetDialogPlaceableCamera(21));
	if ((GetGender(oPC) == 1)) {
		DelayCommand(6.6, PlaySound("as_pl_hscream_04"));
	}
	else {
		DelayCommand(6.6, PlaySound("as_pl_hscream_05"));
	}
	DelayCommand(8.0, EndGame());
}

