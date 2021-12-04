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
void sub3(object objectParam1, object objectParam2);
void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4);
void sub1();

void sub3(object objectParam1, object objectParam2) {
	object oInvItem;
	if (((!GetIsObjectValid(objectParam1)) || (!GetIsObjectValid(objectParam2)))) {
		return;
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(10, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(1, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(3, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(0, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(9, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(7, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(5, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(8, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	if (GetIsObjectValid(oInvItem = GetItemInSlot(4, objectParam1))) {
		GiveItem(oInvItem, objectParam2);
	}
	oInvItem = GetFirstItemInInventory(objectParam1);
	while (GetIsObjectValid(oInvItem)) {
		GiveItem(oInvItem, objectParam2);
		oInvItem = GetFirstItemInInventory(objectParam1);
	}
}

void sub2(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}

void sub1() {
	location location1 = GetLocation(GetFirstPC());
	object oP_hk47;
	int nGlobal = GetGlobalNumber("Lev_Escape");
	object oLev40_headslot = GetObjectByTag("lev40_headslot", 0);
	object oLev40_bodyslot = GetObjectByTag("lev40_bodyslot", 0);
	object oLev40_rhandslot = GetObjectByTag("lev40_rhandslot", 0);
	object oLev40_lhandslot = GetObjectByTag("lev40_lhandslot", 0);
	object oInvItem;
	GiveItem(GetItemInSlot(0, GetFirstPC()), oLev40_headslot);
	GiveItem(GetItemInSlot(1, GetFirstPC()), oLev40_bodyslot);
	GiveItem(GetItemInSlot(4, GetFirstPC()), oLev40_rhandslot);
	GiveItem(GetItemInSlot(5, GetFirstPC()), oLev40_lhandslot);
	SwitchPlayerCharacter((-1));
	AssignCommand(GetFirstPC(), ActionJumpToObject(GetObjectByTag("lev40_wppcesc", 0), 0));
	switch (nGlobal) {
		case 1:
			oP_hk47 = CreateObject(1, "p_mission", location1, 0);
			break;
		case 2:
			oP_hk47 = CreateObject(1, "p_t3m4", location1, 0);
			break;
		case 3:
			oP_hk47 = CreateObject(1, "p_jolee", location1, 0);
			break;
		case 4:
			oP_hk47 = CreateObject(1, "p_cand", location1, 0);
			break;
		case 5:
			oP_hk47 = CreateObject(1, "p_juhani", location1, 0);
			break;
		default:
			oP_hk47 = CreateObject(1, "p_hk47", location1, 0);
			break;
	}
	oInvItem = GetFirstItemInInventory(oLev40_headslot);
	if (GetIsObjectValid(oInvItem)) {
		GiveItem(oInvItem, oP_hk47);
		AssignCommand(oP_hk47, ActionDoCommand(ActionEquipItem(oInvItem, 0, 1)));
	}
	else {
		AssignCommand(oP_hk47, ActionDoCommand(ActionUnequipItem(GetItemInSlot(0, oP_hk47), 0)));
	}
	oInvItem = GetFirstItemInInventory(oLev40_bodyslot);
	if (GetIsObjectValid(oInvItem)) {
		GiveItem(oInvItem, oP_hk47);
		AssignCommand(oP_hk47, ActionDoCommand(ActionEquipItem(oInvItem, 1, 1)));
	}
	else {
		AssignCommand(oP_hk47, ActionDoCommand(ActionUnequipItem(GetItemInSlot(1, oP_hk47), 0)));
	}
	oInvItem = GetFirstItemInInventory(oLev40_rhandslot);
	if (GetIsObjectValid(oInvItem)) {
		GiveItem(oInvItem, oP_hk47);
		AssignCommand(oP_hk47, ActionDoCommand(ActionEquipItem(oInvItem, 4, 1)));
	}
	else {
		AssignCommand(oP_hk47, ActionDoCommand(ActionUnequipItem(GetItemInSlot(4, oP_hk47), 0)));
	}
	oInvItem = GetFirstItemInInventory(oLev40_lhandslot);
	if (GetIsObjectValid(oInvItem)) {
		GiveItem(oInvItem, oP_hk47);
		AssignCommand(oP_hk47, ActionDoCommand(ActionEquipItem(oInvItem, 5, 1)));
	}
	else {
		AssignCommand(oP_hk47, ActionDoCommand(ActionUnequipItem(GetItemInSlot(5, oP_hk47), 0)));
	}
}

void main() {
	object oLev40_partyjunk = GetObjectByTag("lev40_partyjunk", 0);
	object oLev40_partyarea = GetObjectByTag("lev40_partyarea", 0);
	object object5;
	int int1;
	sub1();
	int1 = 0;
	object5 = GetFirstInPersistentObject(oLev40_partyarea, 1, 0);
	while (GetIsObjectValid(object5)) {
		sub2(("STRIPPING - " + GetTag(object5)), 5, (5 + int1), 5.0);
		sub3(object5, oLev40_partyjunk);
		object5 = GetNextInPersistentObject(oLev40_partyarea, 1, 0);
		(int1++);
	}
	ActionPauseConversation();
	ActionWait(3.0);
	ActionResumeConversation();
}

