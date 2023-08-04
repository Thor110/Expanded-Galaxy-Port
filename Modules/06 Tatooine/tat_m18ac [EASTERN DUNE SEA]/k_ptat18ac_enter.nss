// Prototypes
void sub2();
void sub1();

void sub2() {
	object oK_SWG_BODY_LOC = GetWaypointByTag("K_SWG_BODY_LOC");
	location location1 = GetLocation(oK_SWG_BODY_LOC);
	CreateObject(64, "k_swg_helena01", location1, 0);
}

void sub1() {
	object oPC = GetFirstPC();
	object oInvItem = GetFirstItemInInventory(oPC);
	while ((GetIsObjectValid(oInvItem) == 1)) {
		if ((GetTag(oInvItem) == "tat17_sandperdis")) {
			SetItemNonEquippable(oInvItem, 0);
		}
		oInvItem = GetNextItemInInventory(oPC);
	}
}

void main() {
	sub1();
	object oPC = GetFirstPC();
	object oK_SWG_HELENA01 = GetObjectByTag("K_SWG_HELENA01", 0);
	if (((GetGlobalNumber("K_SWG_HELENA") == 3) && (GetIsObjectValid(oK_SWG_HELENA01) == 0))) {
		DelayCommand(1.0, sub2());
	}
}

