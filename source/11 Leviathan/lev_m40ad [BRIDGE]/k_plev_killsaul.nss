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
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void main() {
	object oSaulKarath402 = GetObjectByTag("SaulKarath402", 0);
	if (GetIsObjectValid(oSaulKarath402)) {
		sub1("SAUL DIES", 5, 5, 5.0);
	}
	else {
		sub1("BAD SAUL", 5, 5, 5.0);
	}
	AssignCommand(GetObjectByTag("Carth", 0), ClearAllActions());
	DelayCommand(0.2, AssignCommand(GetObjectByTag("Carth", 0), ClearAllActions()));
	SetPlotFlag(oSaulKarath402, 0);
	SetMinOneHP(oSaulKarath402, 0);
	ApplyEffectToObject(0, EffectDeath(0, 1), oSaulKarath402, 0.0);
}

