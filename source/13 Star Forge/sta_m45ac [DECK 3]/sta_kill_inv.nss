void main() {
	object oSta_sith1 = GetObjectByTag("sta_sith1", 0);
	object oInvItem = GetFirstItemInInventory(oSta_sith1);
	while (GetIsObjectValid(oInvItem)) {
		DestroyObject(oInvItem, 0.0, 0, 0.0);
		oInvItem = GetNextItemInInventory(oSta_sith1);
	}
}

