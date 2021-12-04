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
void sub4(float floatParam1);
void sub3(object objectParam1, object objectParam2, float floatParam3);
void sub2(object objectParam1, object objectParam2, float floatParam3);
void sub1(object objectParam1);

void sub4(float floatParam1) {
	ActionPlayAnimation(21, 1.0, (floatParam1 / 3.0));
	ActionPlayAnimation(18, 1.0, (floatParam1 / 3.0));
	ActionPlayAnimation(21, 1.0, (floatParam1 / 3.0));
}

void sub3(object objectParam1, object objectParam2, float floatParam3) {
	AssignCommand(objectParam2, sub4(floatParam3));
	ApplyEffectToObject(1, EffectBeam(2037, objectParam1, 2, 0), objectParam2, floatParam3);
}

void sub2(object objectParam1, object objectParam2, float floatParam3) {
	object oLev40_tortsnd = GetObjectByTag("lev40_tortsnd", 0);
	sub3(objectParam1, objectParam2, floatParam3);
	SoundObjectPlay(oLev40_tortsnd);
	DelayCommand(floatParam3, SoundObjectStop(oLev40_tortsnd));
}

void sub1(object objectParam1) {
	sub2(GetNearestObjectByTag("lev40_tortcage", objectParam1, 1), objectParam1, 6.0);
}

void main() {
	object oBastila = GetObjectByTag("bastila", 0);
	object oCarth = GetObjectByTag("carth", 0);
	sub1(oBastila);
	PlaySound("cs_bastscrm");
	sub1(oCarth);
	PlaySound("cs_carthscrm");
	sub1(GetFirstPC());
	ActionPauseConversation();
	ActionWait(6.0);
	ActionResumeConversation();
}

