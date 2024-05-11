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
void sub2(int intParam1, string stringParam2, location locationParam3);
void sub1(float floatParam1);

void sub2(int intParam1, string stringParam2, location locationParam3) {
	object object1 = CreateObject(intParam1, stringParam2, locationParam3, 0);
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oPC = GetFirstPC();
	object oVornsdroid = GetObjectByTag("vornsdroid", 0);
	float fFacing = GetFacing(oVornsdroid);
	vector vPosition = GetPosition(oVornsdroid);
	location location1 = Location(vPosition, fFacing);
	location location3 = GetLocation(GetObjectByTag("wp_vorndroidspawn", 0));
	sub1(3.5);
	DelayCommand(0.2, AssignCommand(oPC, PlayAnimation(15, 1.0, 3.0)));
	DelayCommand(3.0, PlaySound("gui_minearm"));
	DestroyObject(oVornsdroid, 0.0, 0, 0.0);
	DelayCommand(0.1, sub2(1, "vornsdroid2", location1));
	if ((GetGlobalBoolean("Tat_VornDroid_Mess") != 1)) {
		DelayCommand(0.2, SignalEvent(GetObjectByTag("vornsdroid2", 0), EventUserDefined(44)));
	}
	SetGlobalNumber("K_Geno_Vorn", 2);
}

