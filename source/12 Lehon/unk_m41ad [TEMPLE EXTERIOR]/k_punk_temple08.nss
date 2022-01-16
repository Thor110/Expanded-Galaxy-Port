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
	object oUnk41_rakguide2 = GetObjectByTag("unk41_rakguide2", 0);
	object oUnk41_rakguide3 = GetObjectByTag("unk41_rakguide3", 0);
	object oUnk41_rakguide4 = GetObjectByTag("unk41_rakguide4", 0);
	object oUnk41_rakguide5 = GetObjectByTag("unk41_rakguide5", 0);
	object oInvis_ritual_target = GetObjectByTag("invis_ritual_target", 0);
	object oInvis_door_target = GetObjectByTag("invis_door_target", 0);
	sub1(12.0);
	SetFacingPoint(GetPosition(oInvis_ritual_target));
	DelayCommand(0.3, PlayAnimation(4, 1.0, 15.0));
	DelayCommand(0.5, AssignCommand(oUnk41_rakguide2, PlayAnimation(4, 1.0, 15.0)));
	DelayCommand(0.8, AssignCommand(oUnk41_rakguide4, PlayAnimation(4, 1.0, 15.2)));
	DelayCommand(1.2, AssignCommand(oUnk41_rakguide5, PlayAnimation(4, 1.0, 15.0)));
	DelayCommand(1.5, AssignCommand(oUnk41_rakguide3, PlayAnimation(4, 1.0, 15.5)));
	DelayCommand(6.0, ApplyEffectToObject(1, EffectBeam(2051, OBJECT_SELF, 1, 0), oInvis_ritual_target, 9.0));
	DelayCommand(6.5, ApplyEffectToObject(1, EffectBeam(2051, oUnk41_rakguide2, 1, 0), oInvis_ritual_target, 9.0));
	DelayCommand(6.8, ApplyEffectToObject(1, EffectBeam(2051, oUnk41_rakguide4, 1, 0), oInvis_ritual_target, 9.0));
	DelayCommand(7.2, ApplyEffectToObject(1, EffectBeam(2051, oUnk41_rakguide5, 1, 0), oInvis_ritual_target, 8.0));
	DelayCommand(7.5, ApplyEffectToObject(1, EffectBeam(2051, oUnk41_rakguide3, 1, 0), oInvis_ritual_target, 8.0));
	DelayCommand(3.0, SetGlobalFadeOut(0.0, 1.0, 0.0, 0.0, 0.0));
	DelayCommand(5.5, SetGlobalFadeIn(0.0, 1.0, 0.0, 0.0, 0.0));
	DelayCommand(5.0, SetDialogPlaceableCamera(16));
	DelayCommand(9.5, SetDialogPlaceableCamera(15));
	DelayCommand(11.0, ApplyEffectToObject(1, EffectBeam(2051, oInvis_ritual_target, 1, 0), oInvis_door_target, 2.5));
	DelayCommand(11.5, ClearAllActions());
}

