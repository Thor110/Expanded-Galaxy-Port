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
	int nGlobal = GetGlobalNumber("STA_GENERATORS");
	nGlobal = (nGlobal + 1);
	SetGlobalNumber("STA_GENERATORS", nGlobal);
	unknown unknown1 = EventUserDefined(345);
	sub1(5.0);
	SignalEvent(OBJECT_SELF, unknown1);
	if ((nGlobal >= 6)) {
		object oK45_door_malak = GetObjectByTag("k45_door_malak", 0);
		SetLocked(oK45_door_malak, 0);
		DelayCommand(3.0, SetDialogPlaceableCamera(6));
		DelayCommand(3.2, AssignCommand(oK45_door_malak, ActionOpenDoor(OBJECT_SELF)));
	}
}
