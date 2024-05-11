// Globals
	int intGLOB_11 = 10;
// Prototypes
void sub2(object objectParam1, int intParam2);
int sub1(object objectParam1);

void sub2(object objectParam1, int intParam2) {
	if (GetIsObjectValid(objectParam1)) {
		if (((intParam2 == 1) || (intParam2 == 0))) {
			SetLocalBoolean(objectParam1, intGLOB_11, intParam2);
		}
	}
}

int sub1(object objectParam1) {
	int nLocalBool;
	if (GetIsObjectValid(objectParam1)) {
		nLocalBool = GetLocalBoolean(objectParam1, intGLOB_11);
		if ((nLocalBool > 0)) {
			return 1;
		}
	}
	return 0;
}

void main() {
	if ((sub1(OBJECT_SELF) == 0)) {
		effect efVisual = EffectVisualEffect(3003, 0);
		object oEnd_explode01 = GetObjectByTag("end_explode01", 0);
		object oEnd_explode02 = GetObjectByTag("end_explode02", 0);
		object oEnd_sith03 = GetObjectByTag("end_sith03", 0);
		ApplyEffectAtLocation(0, efVisual, GetLocation(oEnd_explode01), 0.0);
		SignalEvent(oEnd_sith03, EventUserDefined(50));
		DelayCommand(0.5, ApplyEffectAtLocation(0, efVisual, GetLocation(oEnd_explode02), 0.0));
		sub2(OBJECT_SELF, 1);
		DelayCommand(30.0, sub2(OBJECT_SELF, 0));
	}
}

