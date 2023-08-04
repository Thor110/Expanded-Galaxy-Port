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
void sub2();
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub2() {
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	object oEntering = GetEnteringObject();
	effect efNext;
	if ((!GetIsObjectValid(oBastila))) {
		sub1("BAD BASTILA", 5, 5, 5.0);
	}
	if ((!GetIsObjectValid(oCarth))) {
		sub1("BAD CARTH", 5, 6, 5.0);
	}
	efNext = GetFirstEffect(oBastila);
	while (GetIsEffectValid(efNext)) {
		RemoveEffect(oBastila, efNext);
		efNext = GetNextEffect(oBastila);
	}
	efNext = GetFirstEffect(oCarth);
	while (GetIsEffectValid(efNext)) {
		RemoveEffect(oCarth, efNext);
		efNext = GetNextEffect(oCarth);
	}
	efNext = GetFirstEffect(GetFirstPC());
	while (GetIsEffectValid(efNext)) {
		RemoveEffect(GetFirstPC(), efNext);
		efNext = GetNextEffect(GetFirstPC());
	}
	if ((GetGender(GetFirstPC()) == 0)) {
		sub1("SPEAKING...", 5, 6, 5.0);
	}
}

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	sub1("TORTURE 2", 5, 5, 5.0);
	DestroyObject(GetObjectByTag("lev40_torturer", 0), 0.0, 1, 0.0);
	DelayCommand(0.1, sub2());
}

