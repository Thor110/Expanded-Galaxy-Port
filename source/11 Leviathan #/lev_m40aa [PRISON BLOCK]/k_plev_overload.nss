// Prototypes
void sub1(object objectParam1, float floatParam2, int intParam3);

void sub1(object objectParam1, float floatParam2, int intParam3) {
	if (GetIsObjectValid(objectParam1)) {
		effect efVisual = EffectVisualEffect(3011, 0);
		effect effect3 = EffectVisualEffect(1021, 0);
		effect efBeam = EffectBeam(2038, objectParam1, 1, 0);
		effect efDamage;
		object oNearest = GetNearestObject(1, objectParam1, 1);
		int int2 = 1;
		int int3 = 1000;
		float float1 = 0.3;
		AssignCommand(objectParam1, ActionPlayAnimation(202, 1.0, 0.0));
		DelayCommand(0.3, ApplyEffectAtLocation(0, efVisual, GetLocation(objectParam1), 0.0));
		while ((GetIsObjectValid(oNearest) && (GetDistanceBetween(oNearest, objectParam1) <= floatParam2))) {
			if (((intParam3 == 1) || GetIsEnemy(oNearest, GetFirstPC()))) {
				efDamage = EffectDamage(int3, 128, 0);
				DelayCommand(float1, ApplyEffectToObject(0, efDamage, oNearest, 0.0));
				DelayCommand(float1, ApplyEffectToObject(1, efBeam, oNearest, 1.0));
				DelayCommand(float1, ApplyEffectToObject(0, effect3, oNearest, 1.0));
				float1 = (float1 + 0.17);
			}
			(int2++);
			oNearest = GetNearestObject(1, objectParam1, int2);
		}
		ApplyEffectToObject(0, EffectVisualEffect(1008, 0), objectParam1, 0.0);
	}
}

void main() {
	ExecuteScript("k_plev_resetfact", OBJECT_SELF, 0xFFFFFFFF);
	DelayCommand(1.0, sub1(OBJECT_SELF, 10.0, 1));
}

