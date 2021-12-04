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

void main() {
	if ((((GetGlobalBoolean("DAN_DEATH_DONE") == 1) && (GetGlobalBoolean("DAN_LIFE_DONE") == 1)) && (GetLocalBoolean(OBJECT_SELF, intGLOB_11) == 0))) {
		object oDan15_guarda = GetObjectByTag("dan15_guarda", 0);
		object oDan15_guardb = GetObjectByTag("dan15_guardb", 0);
		effect efDamage = EffectDamage(1000, 8, 0);
		effect efVisual = EffectVisualEffect(1011, 0);
		ApplyEffectToObject(0, efDamage, oDan15_guarda, 0.0);
		ApplyEffectToObject(0, efDamage, oDan15_guardb, 0.0);
		object oMan15_door03 = GetObjectByTag("man15_door03", 0);
		SetLocked(oMan15_door03, 0);
		ApplyEffectToObject(0, efVisual, oMan15_door03, 0.0);
		DelayCommand(1.0, AssignCommand(oMan15_door03, ActionOpenDoor(oMan15_door03)));
		SetLocalBoolean(OBJECT_SELF, intGLOB_11, 1);
	}
}

