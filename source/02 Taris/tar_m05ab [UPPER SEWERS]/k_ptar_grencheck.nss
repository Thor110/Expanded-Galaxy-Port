/*
// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	if ((!ShipBuild())) {
		AurPostString(stringParam1, intParam2, intParam3, floatParam4);
	}
}
*/
int StartingConditional() {
	int int1;
	object oTar05_corpsepile = GetObjectByTag("tar05_corpsepile", 0);
	object oInvItem;
	int int2;
	int1 = ((((((((GetIsObjectValid(GetItemPossessedBy(oTar05_corpsepile, "g_w_fraggren01")) || GetIsObjectValid(GetItemPossessedBy(oTar05_corpsepile, "G_w_ThermlDet01"))) || GetIsObjectValid(GetItemPossessedBy(oTar05_corpsepile, "G_w_StunGren01"))) || GetIsObjectValid(GetItemPossessedBy(oTar05_corpsepile, "g_w_poisngren01"))) || GetIsObjectValid(GetItemPossessedBy(oTar05_corpsepile, "G_w_SonicGren01"))) || GetIsObjectValid(GetItemPossessedBy(oTar05_corpsepile, "g_w_adhsvgren001"))) || GetIsObjectValid(GetItemPossessedBy(oTar05_corpsepile, "G_W_CRYOBGREN001"))) || GetIsObjectValid(GetItemPossessedBy(oTar05_corpsepile, "G_W_FIREGREN001"))) || GetIsObjectValid(GetItemPossessedBy(oTar05_corpsepile, "g_w_iongren01")));
	int2 = 0;
	oInvItem = GetFirstItemInInventory(oTar05_corpsepile);
	while (GetIsObjectValid(oInvItem)) {
		//sub1(("EATING - " + GetTag(oInvItem)), 5, (5 + int2), 5.0);
		DestroyObject(oInvItem, 0.0, 1, 0.0);
		oInvItem = GetNextItemInInventory(oTar05_corpsepile);
		(int2++);
	}
	return int1;
}

