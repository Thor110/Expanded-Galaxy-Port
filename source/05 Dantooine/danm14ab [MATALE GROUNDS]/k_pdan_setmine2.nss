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
void sub2(int intParam1);
void sub1(float floatParam1);

void sub2(int intParam1) {
	object object1 = GetItemPossessedBy(GetFirstPC(), "K_COMPUTER_SPIKE");
	if (GetIsObjectValid(object1)) {
		int int2 = GetItemStackSize(object1);
		if ((intParam1 < int2)) {
			intParam1 = (int2 - intParam1);
			SetItemStackSize(object1, intParam1);
		}
		else {
			if (((intParam1 > int2) || (intParam1 == int2))) {
				DestroyObject(object1, 0.0, 0, 0.0);
			}
		}
	}
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oPC = GetFirstPC();
	location location1 = GetLocation(GetObjectByTag("dan_spawn_zuulan", 0));
	location location3 = GetLocation(GetObjectByTag("dan_spawn_droid1", 0));
	location location5 = GetLocation(GetObjectByTag("dan_spawn_droid2", 0));
	sub1(3.5);
	sub2(1);
	CreateObject(1, "dan_cut_zuulan", location1, 0);
	CreateObject(1, "dan_cut_droid1", location3, 0);
	CreateObject(1, "dan_cut_droid2", location5, 0);
	DelayCommand(0.2, AssignCommand(oPC, PlayAnimation(15, 1.0, 3.0)));
	DelayCommand(0.8, PlaySound("gui_prompt"));
}

