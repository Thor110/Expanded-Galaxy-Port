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
	int intGLOB_28 = 24;

void main() {
	object oKor37_bridge4 = GetObjectByTag("kor37_bridge4", 0);
	ActionPauseConversation();
	effect efVisual = EffectVisualEffect(2032, 0);
	DelayCommand(1.0, ApplyEffectToObject(2, efVisual, oKor37_bridge4, 0.0));
	AssignCommand(oKor37_bridge4, ClearAllActions());
	AssignCommand(oKor37_bridge4, ActionPlayAnimation(intGLOB_28, 1.0, 6.0));
	ChangeToStandardFaction(oKor37_bridge4, 1);
	ActionWait(2.0);
	ActionResumeConversation();
}

