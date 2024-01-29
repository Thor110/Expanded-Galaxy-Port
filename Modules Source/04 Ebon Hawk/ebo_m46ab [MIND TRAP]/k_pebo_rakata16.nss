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
	location location1 = GetLocation(oPC);
	location location3 = GetLocation(oNearestPrisoner);
	location location5 = GetLocation(GetObjectByTag("ebo_pcjump", 0));
	SetGlobalNumber("EBO_MYSTERY_BOX", 10);
	sub1(9.2);
	DelayCommand(0.5, AssignCommand(oNearestPrisoner, PlayAnimation(4, 1.0, 3.0)));
	DelayCommand(2.5, ApplyEffectToObject(1, EffectBeam(2051, oNearestPrisoner, 1, 0), oPC, 1.2));
	DelayCommand(3.0, ApplyEffectAtLocation(0, EffectVisualEffect(3011, 0), location1, 0.0));
	DelayCommand(3.0, ApplyEffectToObject(2, EffectInvisibility(2), oPC, 0.0));
	DelayCommand(3.3, AssignCommand(oPC, JumpToLocation(location5)));
	DelayCommand(8.2, SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0));
	DelayCommand(6.5, AssignCommand(oNearestPrisoner, PlayAnimation(102, 1.0, 7.0)));
	DelayCommand(8.1, AssignCommand(oNearestPrisoner, PlayAnimation(103, 1.0, 7.0)));
	DelayCommand(9.2, AssignCommand(oPC, ClearAllEffects()));
	DelayCommand(9.2, StartNewModule("ebo_m12aa", "EBO_PRISON_SPAWN", "", "", "", "", "", ""));
}

