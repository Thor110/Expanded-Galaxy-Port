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
	object oSta_force_cage = GetObjectByTag("sta_force_cage", 0);
	object oSta_armor_container = GetObjectByTag("sta_armor_container", 0);
	string string1 = "g_a_class9002";
	effect efVisual = EffectVisualEffect(1046, 0);
	effect effect3 = EffectVisualEffect(2044, 0);
	sub1(6.5);
	SetLocked(oSta_armor_container, 0);
	AssignCommand(oSta_armor_container, ClearAllEffects());
	CreateItemOnObject(string1, oSta_armor_container, 1);
	DelayCommand(1.4, PlaySound("v_pro_resfrc"));
	DelayCommand(1.5, ApplyEffectAtLocation(0, efVisual, GetLocation(oSta_armor_container), 0.0));
	DelayCommand(3.5, ApplyEffectToObject(2, effect3, oSta_armor_container, 0.0));
	DelayCommand(2.5, AssignCommand(oSta_force_cage, PlayAnimation(202, 1.0, 0.0)));
}

