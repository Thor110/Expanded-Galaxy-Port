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
	object oVornsdroid2 = GetObjectByTag("vornsdroid2", 0);
	object oVornsdroid3 = GetObjectByTag("vornsdroid3", 0);
	object oVorn = GetObjectByTag("Vorn", 0);
	location location1 = GetLocation(GetObjectByTag("tat_party0_bike_jump2", 0));
	sub1(14.5);
	AssignCommand(oVorn, SetFacingPoint(GetPosition(oVornsdroid2)));
	DelayCommand(1.0, AssignCommand(oVorn, PlayAnimation(1, 0.8, 2.0)));
	DelayCommand(3.0, AssignCommand(oVorn, PlayAnimation(5, 1.0, 2.0)));
	DelayCommand(3.9, AssignCommand(oVornsdroid2, ClearAllActions()));
	DelayCommand(3.75, AssignCommand(oVornsdroid3, PlaySound("as_el_cnsbeep_02")));
	DelayCommand(3.9, AssignCommand(oVornsdroid2, PlayAnimation(115, 1.0, 0.0)));
	DelayCommand(6.0, AssignCommand(oVorn, ActionMoveToLocation(location1, 0)));
	DelayCommand(6.3, SetDialogPlaceableCamera(4));
	DelayCommand(9.0, AssignCommand(oVorn, PlayAnimation(1, 0.8, 3.2)));
	DelayCommand(12.2, AssignCommand(oVorn, PlayAnimation(100, 1.0, 0.0)));
	DelayCommand(13.2, AssignCommand(oVorn, PlayAnimation(101, 1.0, 0.0)));
	DelayCommand(13.5, SetLockOrientationInDialog(oVorn, 1));
	DelayCommand(13.9, AssignCommand(oVorn, SetFacingPoint(GetPosition(oVornsdroid2))));
}

