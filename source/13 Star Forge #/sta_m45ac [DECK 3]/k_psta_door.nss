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
void sub4(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub3();
void sub2();
void sub1(float floatParam1);

void sub4(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub3() {
	object oBastila = GetObjectByTag("Bastila", 0);
	object oCarth = GetObjectByTag("Carth", 0);
	object oJolee = GetObjectByTag("Jolee", 0);
	object oCand = GetObjectByTag("Cand", 0);
	object oHK47 = GetObjectByTag("HK47", 0);
	object oJuhani = GetObjectByTag("Juhani", 0);
	object oT3M4 = GetObjectByTag("T3M4", 0);
	object oZaalbar = GetObjectByTag("Zaalbar", 0);
	object oMission = GetObjectByTag("Mission", 0);
	object oYuthura = GetObjectByTag("kor39_yuthura", 0);
	if (GetIsObjectValid(oBastila)) {
		DestroyObject(oBastila, 0.0, 0, 0.0);
		sub4("Destroying Bastila", 10, 10, 5.0);
	}
	if (GetIsObjectValid(oCarth)) {
		SaveNPCState(2);
		DestroyObject(oCarth, 0.0, 0, 0.0);
		sub4("Destroying and Saving Carth", 10, 10, 5.0);
	}
	if (GetIsObjectValid(oJolee)) {
		DestroyObject(oJolee, 0.0, 0, 0.0);
		sub4("Destroying Jolee", 10, 10, 5.0);
	}
	if (GetIsObjectValid(oCand)) {
		DestroyObject(oCand, 0.0, 0, 0.0);
		sub4("Destroying Cand", 10, 10, 5.0);
	}
	if (GetIsObjectValid(oHK47)) {
		DestroyObject(oHK47, 0.0, 0, 0.0);
		sub4("Destroying HK47", 10, 10, 5.0);
	}
	if (GetIsObjectValid(oJuhani)) {
		DestroyObject(oJuhani, 0.0, 0, 0.0);
		sub4("Destroying Juhani", 10, 10, 5.0);
	}
	if (GetIsObjectValid(oT3M4)) {
		DestroyObject(oT3M4, 0.0, 0, 0.0);
		sub4("Destroying T3M4", 10, 10, 5.0);
	}
	if (GetIsObjectValid(oZaalbar)) {
		DestroyObject(oZaalbar, 0.0, 0, 0.0);
		sub4("Destroying Zaalbar", 10, 10, 5.0);
	}
	if (GetIsObjectValid(oMission)) {
		DestroyObject(oMission, 0.0, 0, 0.0);
		sub4("Destroying Mission", 10, 10, 5.0);
	}
	if (GetIsObjectValid(oYuthura)) {
		DestroyObject(oYuthura, 0.0, 0, 0.0);
		sub4("Destroying Yuthura", 10, 10, 5.0);
	}
}

void sub2() {
	RemovePartyMember(0);
	RemovePartyMember(1);
	RemovePartyMember(2);
	RemovePartyMember(3);
	RemovePartyMember(4);
	RemovePartyMember(5);
	RemovePartyMember(6);
	RemovePartyMember(7);
	RemovePartyMember(8);
	RemovePartyMember(9);
}

void sub1(float floatParam1) {
	ActionPauseConversation();
	DelayCommand(floatParam1, ActionResumeConversation());
}

void main() {
	object oNearestK45_door_bast1 = GetNearestObjectByTag("k45_door_bast1", OBJECT_SELF, 1);
	object oNPC = GetPartyMemberByIndex(0);
	sub1(2.5);
	AssignCommand(oNPC, SetFacingPoint(GetPosition(oNearestK45_door_bast1)));
	AssignCommand(oNearestK45_door_bast1, ActionCloseDoor(OBJECT_SELF));
	DelayCommand(1.0, SetLocked(oNearestK45_door_bast1, 1));
	DelayCommand(1.9499999, sub2());
	DelayCommand(1.9599999, sub3());
}

